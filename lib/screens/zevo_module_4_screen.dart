import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import '../services/zevo_photo_storage_service.dart';
import 'zevo_privacy_screen.dart';
import 'zevo_terms_screen.dart';
import 'zevo_about_us_screen.dart';
import 'zevo_inapppurchases_screen.dart';
import 'zevo_subscriptions_screen.dart';

class ZevoModule4Screen extends StatefulWidget {
  const ZevoModule4Screen({super.key});

  @override
  State<ZevoModule4Screen> createState() => _ZevoModule4ScreenState();
}

class _ZevoModule4ScreenState extends State<ZevoModule4Screen> {
  List<String> _photoFileNames = [];
  bool _isLoading = true;
  final ImagePicker _picker = ImagePicker();
  String _userName = 'User';
  final TextEditingController _nameController = TextEditingController();
  bool _isVip = false;

  @override
  void initState() {
    super.initState();
    _loadPhotos();
    _loadUserName();
    _loadVipStatus();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _loadPhotos() async {
    setState(() {
      _isLoading = true;
    });
    
    try {
      final photos = await ZevoPhotoStorageService.getPhotoFileNames();
      setState(() {
        _photoFileNames = photos;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _loadUserName() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedName = prefs.getString('user_name');
      if (savedName != null && savedName.isNotEmpty) {
        setState(() {
          _userName = savedName;
          _nameController.text = savedName;
        });
      }
    } catch (e) {
      // 忽略错误，使用默认名称
    }
  }

  Future<void> _loadVipStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        _isVip = prefs.getBool('isVip') ?? false;
      });
    } catch (e) {
      debugPrint('Error loading VIP status: $e');
    }
  }

  Future<void> _saveUserName(String name) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('user_name', name);
      setState(() {
        _userName = name;
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error saving name: $e')),
        );
      }
    }
  }

  void _showEditNameDialog() {
    _nameController.text = _userName;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        title: const Text(
          'Edit Name',
          style: TextStyle(color: Colors.black),
        ),
        content: TextField(
          controller: _nameController,
          decoration: const InputDecoration(
            hintText: 'Enter your name',
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFBBFF2F)),
            ),
          ),
          style: const TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              final newName = _nameController.text.trim();
              if (newName.isNotEmpty) {
                _saveUserName(newName);
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Name updated successfully!'),
                    backgroundColor: Color(0xFFBBFF2F),
                  ),
                );
              }
            },
            child: const Text(
              'Save',
              style: TextStyle(color: Color(0xFFBBFF2F)),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1024,
        maxHeight: 1024,
        imageQuality: 80,
      );
      
      if (image != null) {
        final fileName = await ZevoPhotoStorageService.savePhoto(File(image.path));
        setState(() {
          _photoFileNames.add(fileName);
        });
        
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Photo saved successfully!'),
              backgroundColor: Color(0xFFBBFF2F),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error saving photo: $e')),
        );
      }
    }
  }

  Future<void> _deletePhoto(String fileName) async {
    try {
      final success = await ZevoPhotoStorageService.deletePhoto(fileName);
      if (success) {
        setState(() {
          _photoFileNames.remove(fileName);
        });
        
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Photo deleted successfully!'),
              backgroundColor: Color(0xFFBBFF2F),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error deleting photo: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 背景图片
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/zevo_all_bg.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 主内容
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 标题和VIP按钮
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Your photos',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // 照片网格
                  _isLoading
                      ? const Center(child: CircularProgressIndicator(color: Colors.white))
                      : _buildPhotoGrid(),
                  const SizedBox(height: 30),
                  // 用户名称
                  _buildUserNameSection(),
                  const SizedBox(height: 20),
                  // 钱包和VIP选项
                  _buildWalletVipOptions(),
                  const SizedBox(height: 30),
                  // 菜单选项
                  _buildMenuOptions(),
                  const SizedBox(height: 100), // 增加底部间距，避免被TabBar遮挡
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildPhotoGrid() {
    return SizedBox(
      height: 108, // 固定父视图高度
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: _photoFileNames.length + 1, // +1 for add button
        itemBuilder: (context, index) {
          if (index == 0) {
            // 添加照片按钮 - 始终在左边
            return SizedBox(
              height: 108, // 固定高度
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: _buildAddPhotoButton(),
              ),
            );
          } else {
            // 照片项目
            return SizedBox(
              height: 108, // 固定高度
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: _buildPhotoItem(_photoFileNames[index - 1]),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildUserNameSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFBBFF2F).withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.person,
            color: Color(0xFFBBFF2F),
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'User Name',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  _userName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: _showEditNameDialog,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFBBFF2F).withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFBBFF2F),
                  width: 1,
                ),
              ),
              child: const Text(
                'Edit',
                style: TextStyle(
                  color: Color(0xFFBBFF2F),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWalletVipOptions() {
    return Column(
      children: [
        _buildWalletVipCard(
          imagePath: 'assets/zevo_me_wallet.webp',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InAppPurchasesPage()),
            );
          },
        ),
        const SizedBox(height: 16),
        _buildWalletVipCard(
          imagePath: 'assets/zevo_me_vip.webp',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SubscriptionsPage()),
            );
          },
        ),
      ],
    );
  }

  Widget _buildWalletVipCard({
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imagePath,
        width: double.infinity,
        height: 80,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildMenuOptions() {
    return Column(
      children: [
        _buildMenuItem(
          imagePath: 'assets/zevo_me_privacy_policy.webp',
          title: 'Privacy Policy',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ZevoPrivacyScreen()),
            );
          },
        ),
        const SizedBox(height: 16),
        _buildMenuItem(
          imagePath: 'assets/zevo_me_user_agreement.webp',
          title: 'Terms of Service',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ZevoTermsScreen()),
            );
          },
        ),
        const SizedBox(height: 16),
        _buildMenuItem(
          imagePath: 'assets/zevo_me_about_us.webp',
          title: 'About Us',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ZevoAboutUsScreen()),
            );
          },
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required String imagePath,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFBBFF2F).withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Image.asset(
                    'assets/zevo_me_enter.webp',
                    width: 135,
                    height: 34,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Image.asset(
              imagePath,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildAddPhotoButton() {
    return GestureDetector(
      onTap: _showPhotoPicker,
      child: Container(
        width: 117,
        height: 108,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xFFBBFF2F),
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.add,
            color: Color(0xFFBBFF2F),
            size: 40,
          ),
        ),
      ),
    );
  }

  void _showPhotoPicker() {
    // 检查VIP状态
    if (_isVip) {
      _showPhotoPickerOptions();
    } else {
      _showVipRequiredDialog();
    }
  }

  void _showPhotoPickerOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const Text(
              'Add Photo',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildPickerOption(
                  icon: Icons.photo_library,
                  label: 'Gallery',
                  onTap: () {
                    Navigator.pop(context);
                    _pickImage();
                  },
                ),
                _buildPickerOption(
                  icon: Icons.camera_alt,
                  label: 'Camera',
                  onTap: () {
                    Navigator.pop(context);
                    _pickImageFromCamera();
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildPickerOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: BoxDecoration(
          color: const Color(0xFFBBFF2F).withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xFFBBFF2F),
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: const Color(0xFFBBFF2F),
              size: 32,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                color: Color(0xFFBBFF2F),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImageFromCamera() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.camera,
        maxWidth: 1024,
        maxHeight: 1024,
        imageQuality: 80,
      );
      
      if (image != null) {
        final fileName = await ZevoPhotoStorageService.savePhoto(File(image.path));
        setState(() {
          _photoFileNames.add(fileName);
        });
        
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Photo saved successfully!'),
              backgroundColor: Color(0xFFBBFF2F),
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error saving photo: $e')),
        );
      }
    }
  }

  void _showVipRequiredDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF2D2D2D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text(
            'VIP Required',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Photo gallery is only available for VIP members. Choose your plan:',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              
              // 周订阅
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF3A3A3A),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF555555),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Weekly Plan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '\$12.99/week',
                      style: TextStyle(
                        color: Color(0xFFFFD700),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      '7 days access',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 12),
              
              // 月订阅
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF3A3A3A),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF555555),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Monthly Plan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '\$49.99/month',
                      style: TextStyle(
                        color: Color(0xFFFFD700),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      '30 days access',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SubscriptionsPage(),
                  ),
                );
              },
              child: const Text(
                'View Plans',
                style: TextStyle(
                  color: Color(0xFFFFD700),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPhotoItem(String fileName) {
    return FutureBuilder<File?>(
      future: ZevoPhotoStorageService.getPhotoFile(fileName),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null) {
          return Stack(
            children: [
              Container(
                width: 117,
                height: 108,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.file(
                    snapshot.data!,
                    width: 117,
                    height: 108,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // 删除按钮
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () => _deletePhoto(fileName),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          );
        } else {
          return Container(
            width: 117,
            height: 108,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Icon(
                Icons.error_outline,
                color: Colors.white,
                size: 40,
              ),
            ),
          );
        }
      },
    );
  }
}
