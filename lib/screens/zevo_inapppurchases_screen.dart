import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';

class GoldProduct {
  final String amountStr;
  final String productId;
  final double price;
  int get amount => int.tryParse(amountStr) ?? 0;
  const GoldProduct(this.amountStr, this.productId, this.price);
}


class GoldProducts {
  static const List<GoldProduct> all = [
    GoldProduct('32', 'Zevo', 0.99),
    GoldProduct('60', 'Zevo1', 1.99),
    GoldProduct('96', 'Zevo2', 2.99),
    GoldProduct('155', 'Zevo4', 4.99),
    GoldProduct('189', 'Zevo5', 5.99),
    GoldProduct('359', 'Zevo9', 9.99),
    GoldProduct('729', 'Zevo19', 19.99),
    GoldProduct('1869', 'Zevo49', 49.99),
    GoldProduct('3799', 'Zevo99', 99.99),
    GoldProduct('5999', 'Zevo159', 159.99),
    GoldProduct('9059', 'Zevo239', 239.99),
  ];
}

class InAppPurchasesPage extends StatefulWidget {
  const InAppPurchasesPage({super.key});

  @override
  State<InAppPurchasesPage> createState() => _InAppPurchasesPageState();
}

class _InAppPurchasesPageState extends State<InAppPurchasesPage> {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<ProductDetails> _products = [];
  bool _isLoading = true;
  bool _purchasePending = false;
  int _goldCoins = 0;
  final Set<String> _processedPurchases = {}; // 跟踪已处理的购买
  bool _isInitialized = false; // 标记是否已初始化
  int _selectedProductIndex = 0; // 跟踪选中的商品索引

  List<GoldProduct> get _goldProducts => GoldProducts.all;

  @override
  void initState() {
    super.initState();
    
    final Stream<List<PurchaseDetails>> purchaseUpdated = _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen(_listenToPurchaseUpdated, onDone: () {
      _subscription.cancel();
    }, onError: (error) {
      debugPrint("Error in IAP Stream: $error");
    });
    _loadGoldCoins();
    _initInAppPurchase();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  Future<void> _loadGoldCoins() async {
    final prefs = await SharedPreferences.getInstance();
    int coins = prefs.getInt('petCoins') ?? 0;
    debugPrint('Loading star coins: $coins');
    setState(() {
      _goldCoins = coins;
      // 如果还没有初始化完成，在这里也设置标志
      if (!_isInitialized) {
        _isInitialized = true;
        debugPrint('Initialized from _loadGoldCoins');
      }
    });
  }

  Future<void> _saveGoldCoins(int amount) async {
    final prefs = await SharedPreferences.getInstance();
    debugPrint('Saving star coins: current=$_goldCoins, adding=$amount, new=${_goldCoins + amount}');
    debugPrint('Call stack: ${StackTrace.current}');
    setState(() {
      _goldCoins += amount;
    });
    await prefs.setInt('petCoins', _goldCoins);
  }

  Future<void> _initInAppPurchase() async {
    final bool isAvailable = await _inAppPurchase.isAvailable();
    debugPrint('Store availability: $isAvailable');
    
    if (!isAvailable) {
      setState(() {
        _isLoading = false;
        _isInitialized = true; // 即使出错也标记为已初始化
      });
      return;
    }
    
    final Set<String> productIds = _goldProducts.map((e) => e.productId).toSet();
    debugPrint('Querying products: $productIds');
    
    try {
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      debugPrint('Found ${response.productDetails.length} products');
      debugPrint('Product IDs: ${response.productDetails.map((p) => p.id).toList()}');
      
      setState(() {
        _products = response.productDetails;
        _isLoading = false;
        _isInitialized = true; // 标记初始化完成
      });
      debugPrint('InAppPurchase initialized successfully');
      
      if (response.productDetails.isEmpty) {
        // _showSnackBar("No products available");
      }
    } catch (e) {
      debugPrint('Error loading products: $e');
      setState(() {
        _isLoading = false;
        _isInitialized = true; // 即使出错也标记为已初始化
      });
      _showSnackBar("Failed to load products: $e");
    }
  }

  Future<void> _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    // 如果页面还没有初始化完成，忽略购买更新
    if (!_isInitialized) {
      debugPrint('Ignoring purchase updates during initialization');
      return;
    }
    
    for (var purchaseDetails in purchaseDetailsList) {
      debugPrint('Purchase status: ${purchaseDetails.status} for product: ${purchaseDetails.productID}');
      
      if (purchaseDetails.status == PurchaseStatus.pending) {
        setState(() {
          _purchasePending = true;
        });
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          setState(() {
            _purchasePending = false;
          });
          _showSnackBar("Purchase failed: ${purchaseDetails.error?.message ?? 'Unknown error'}");
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                   purchaseDetails.status == PurchaseStatus.restored) {
          // 处理新购买和恢复的购买
          _handleSuccessfulPurchase(purchaseDetails);
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
          setState(() {
            _purchasePending = false;
          });
        }
        // 移除重复的completePurchase调用，现在在_handleSuccessfulPurchase中处理
      }
    }
  }

  Future<void> _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    // 检查是否已经处理过这个购买
    String purchaseKey = '${purchaseDetails.productID}_${purchaseDetails.purchaseID}_${purchaseDetails.status}';
    if (_processedPurchases.contains(purchaseKey)) {
      debugPrint('Purchase already processed: $purchaseKey');
      return;
    }
    
    // 添加到已处理列表
    _processedPurchases.add(purchaseKey);
    
    debugPrint('Handling successful purchase: ${purchaseDetails.productID} (${purchaseDetails.status})');
    debugPrint('Available product IDs: ${_goldProducts.map((p) => p.productId).toList()}');
    
    setState(() {
      _purchasePending = false;
    });
    
    final product = _goldProducts.firstWhere(
      (e) => e.productId == purchaseDetails.productID, 
      orElse: () {
        debugPrint('Product not found in configuration: ${purchaseDetails.productID}');
        return GoldProduct('', '', 0);
      }
    );
    
    if (product.amount > 0) {
      debugPrint('Processing purchase: ${product.amount} coins for product ${purchaseDetails.productID}');
      await _saveGoldCoins(product.amount);
      _showSnackBar("Purchase successful! +${product.amount} Star Coins");
    } else {
      debugPrint('Product amount is 0 or product not found: ${purchaseDetails.productID}');
    }
    
    // 总是清除订单
    debugPrint('Completing purchase: ${purchaseDetails.productID}');
    await _inAppPurchase.completePurchase(purchaseDetails);
  }

  void _showSnackBar(String msg) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(msg),
          backgroundColor: const Color(0xFF2E7D7A),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );
    }
  }

  Future<void> _processPurchase(String productId) async {
    debugPrint('Attempting to purchase product: $productId');
    debugPrint('Available products: ${_products.map((p) => p.id).toList()}');
    
    final ProductDetails? product = _products.firstWhereOrNull((p) => p.id == productId);
    if (product == null) {
      debugPrint('Product not found: $productId');
      _showSnackBar("Product not available");
      return;
    }
    
    debugPrint('Product found: ${product.id} - ${product.title} - ${product.price}');
    
    setState(() {
      _purchasePending = true;
    });
    
    try {
      // 添加短暂延迟，确保系统准备好
      await Future.delayed(const Duration(milliseconds: 500));
      
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
      debugPrint('Starting purchase for: ${product.id}');
      await _inAppPurchase.buyConsumable(purchaseParam: purchaseParam);
      debugPrint('Purchase initiated successfully');
    } catch (e) {
      debugPrint('Error starting purchase: $e');
      setState(() {
        _purchasePending = false;
      });
      _showSnackBar("Error starting purchase: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A), // 深色背景
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D2D2D), // 深色AppBar
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Wallet',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              ),
            )
          : SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 钱包余额卡片
                  _buildWalletBalanceCard(),
                  const SizedBox(height: 30),
                  
                  // 选择充值金额标题
                  const Text(
                    'Select top-up amount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // 商品网格
                  _buildProductGrid(),
                  const SizedBox(height: 30),
                  
                  // 充值按钮
                  _buildRechargeButton(),
                ],
              ),
            ),
    );
  }

  Widget _buildWalletBalanceCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFFD700), Color(0xFFFFA500)], // 金黄色渐变
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFFD700).withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wallet balance',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '$_goldCoins',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // 金币图标
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              'assets/zevo_wallet_coin.webp',
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9, // 减小宽高比，增加高度
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: _goldProducts.length,
      itemBuilder: (context, index) {
        final item = _goldProducts[index];
        final product = _products.firstWhereOrNull((p) => p.id == item.productId);
        final priceStr = product?.price != null 
            ? product!.price.replaceAll('US\$', '\$')
            : '\$${item.price.toStringAsFixed(2)}';
        
        return _buildProductCard(item, priceStr, index == _selectedProductIndex);
      },
    );
  }

  Widget _buildProductCard(GoldProduct item, String priceStr, bool isSelected) {
    return GestureDetector(
      onTap: _purchasePending ? null : () {
        // 切换选中状态
        setState(() {
          _selectedProductIndex = _goldProducts.indexOf(item);
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF2D2D2D) : const Color(0xFF3A3A3A),
          borderRadius: BorderRadius.circular(12),
          border: isSelected 
              ? Border.all(color: const Color(0xFFFFD700), width: 2)
              : Border.all(color: const Color(0xFF555555), width: 1),
        ),
        child: Stack(
          children: [
            // 主要内容区域
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // 金币图标
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD700).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/zevo_wallet_coin.webp',
                          width: 40,
                          height: 40,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${item.amount}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Gold coins',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      priceStr,
                      style: const TextStyle(
                        color: Color(0xFFFFD700),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            // 选中标记
            if (isSelected)
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFD700),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.black,
                    size: 14,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildRechargeButton() {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFFD700), Color(0xFFFFA500)],
        ),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFFD700).withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(28),
          onTap: _purchasePending ? null : () {
            // 使用选中的商品进行购买
            if (_selectedProductIndex < _goldProducts.length) {
              final selectedProduct = _goldProducts[_selectedProductIndex];
              _processPurchase(selectedProduct.productId);
            }
          },
          child: const Center(
            child: Text(
              'Recharge',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension FirstWhereOrNullExtension<E> on List<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (final element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}