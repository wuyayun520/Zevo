import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'zevo_activity_screen.dart';
import 'zevo_user_detail_screen.dart';

class ZevoModule1Screen extends StatefulWidget {
  const ZevoModule1Screen({super.key});

  @override
  State<ZevoModule1Screen> createState() => _ZevoModule1ScreenState();
}

class _ZevoModule1ScreenState extends State<ZevoModule1Screen> {
  List<Map<String, dynamic>> _allUsers = [];
  List<Map<String, dynamic>> _dumbbellUsers = [];
  List<Map<String, dynamic>> _tennisUsers = [];
  List<Map<String, dynamic>> _swimmingUsers = [];
  bool _isLoading = true;
  int _selectedCategory = 0; // 0: dumbbell, 1: tennis, 2: swimming

  @override
  void initState() {
    super.initState();
    _loadFitnessUsers();
  }

  Future<void> _loadFitnessUsers() async {
    try {
      final String response = await rootBundle.loadString('assets/dreswell/fitness_users_data_safe.json');
      final data = json.decode(response);
      final List users = data['fitnessUsers'];
      
      setState(() {
        _allUsers = List<Map<String, dynamic>>.from(users);
        _categorizeUsers();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _categorizeUsers() {
    // 根据用户类型分类，确保每个分类都有5条数据
    final dumbbellCandidates = _allUsers.where((user) {
      final workoutStyle = user['workoutStyle'].toString().toLowerCase();
      return workoutStyle.contains('weight') || 
             workoutStyle.contains('bodybuilding') || 
             workoutStyle.contains('powerlifting') ||
             workoutStyle.contains('strongman');
    }).toList();

    final tennisCandidates = _allUsers.where((user) {
      final workoutStyle = user['workoutStyle'].toString().toLowerCase();
      return workoutStyle.contains('hiit') || 
             workoutStyle.contains('cardio') || 
             workoutStyle.contains('running') ||
             workoutStyle.contains('track');
    }).toList();

    final swimmingCandidates = _allUsers.where((user) {
      final workoutStyle = user['workoutStyle'].toString().toLowerCase();
      return workoutStyle.contains('crossfit') || 
             workoutStyle.contains('olympic') || 
             workoutStyle.contains('triathlon') ||
             workoutStyle.contains('gymnastics');
    }).toList();

    // 确保每个分类都有5条数据，如果不够则从其他分类补充
    _dumbbellUsers = _getUsersForCategory(dumbbellCandidates, 0);
    _tennisUsers = _getUsersForCategory(tennisCandidates, 5);
    _swimmingUsers = _getUsersForCategory(swimmingCandidates, 10);
    
    // 交换第一条数据和第六条数据
    if (_dumbbellUsers.isNotEmpty && _tennisUsers.isNotEmpty) {
      final firstUser = _dumbbellUsers[0];
      final sixthUser = _tennisUsers[0]; // 第六条数据是第二个分类的第一条
      
      _dumbbellUsers[0] = sixthUser;
      _tennisUsers[0] = firstUser;
      
      print('已交换第一条数据和第六条数据');
      print('第一条数据（原第六条）: ${sixthUser['name']}');
      print('第六条数据（原第一条）: ${firstUser['name']}');
    }
  }

  List<Map<String, dynamic>> _getUsersForCategory(List<Map<String, dynamic>> candidates, int startIndex) {
    List<Map<String, dynamic>> result = [];
    
    // 首先添加该分类的候选用户
    result.addAll(candidates.take(5).toList());
    
    // 如果该分类用户不够5个，从其他用户中补充
    if (result.length < 5) {
      final remainingUsers = _allUsers.where((user) => !result.contains(user)).toList();
      final needed = 5 - result.length;
      final start = startIndex % remainingUsers.length;
      
      for (int i = 0; i < needed && i < remainingUsers.length; i++) {
        final index = (start + i) % remainingUsers.length;
        if (!result.contains(remainingUsers[index])) {
          result.add(remainingUsers[index]);
        }
      }
    }
    
    return result.take(5).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/zevo_all_bg.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 54), // 顶部间距
              // 顶部横幅图片
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ZevoActivityScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/zevo_home_top_picture.webp',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 20),
              // 文字图片
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/zevo_home_trenging.webp',
                    width: 200,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // 分类图片列表
              SizedBox(
                height: 133,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    _buildCategoryImage('assets/zevo_home_dumbbell.webp', 0),
                    const SizedBox(width: 20),
                    _buildCategoryImage('assets/zevo_home_tennis.webp', 1),
                    const SizedBox(width: 20),
                    _buildCategoryImage('assets/zevo_home_swimming.webp', 2),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // 用户列表区域
              _isLoading
                  ? const Padding(
                      padding: EdgeInsets.all(50),
                      child: CircularProgressIndicator(color: Colors.white),
                    )
                  : _buildSelectedCategoryUsers(),
              const SizedBox(height: 100), // 底部间距
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryImage(String imagePath, int categoryIndex) {
    final isSelected = _selectedCategory == categoryIndex;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = categoryIndex;
        });
        print('Selected category: $categoryIndex');
      },
      child: Container(
        width: 117,
        height: 133,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: isSelected 
              ? Border.all(color: const Color(0xFFBBFF2F), width: 3)
              : null,
          boxShadow: [
            BoxShadow(
              color: isSelected 
                  ? const Color(0xFFBBFF2F).withOpacity(0.3)
                  : Colors.black.withOpacity(0.1),
              blurRadius: isSelected ? 12 : 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            width: 117,
            height: 133,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedCategoryUsers() {
    String title;
    List<Map<String, dynamic>> users;
    
    switch (_selectedCategory) {
      case 0:
        title = 'Weight Training';
        users = _dumbbellUsers;
        break;
      case 1:
        title = 'Cardio & HIIT';
        users = _tennisUsers;
        break;
      case 2:
        title = 'Functional Fitness';
        users = _swimmingUsers;
        break;
      default:
        title = 'Weight Training';
        users = _dumbbellUsers;
    }
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUserSection(title, users),
        ],
      ),
    );
  }

  Widget _buildUserSection(String title, List<Map<String, dynamic>> users) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 垂直列表展示用户卡片（去掉标题）
        ...users.map((user) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: _buildUserCard(user),
        )).toList(),
      ],
    );
  }

  Widget _buildUserCard(Map<String, dynamic> user) {
    final List<dynamic> images = user['images'] ?? [];
    
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ZevoUserDetailScreen(user: user),
          ),
        );
      },
      child: Container(
      width: double.infinity,
      height: 220, // 增加高度以容纳所有内容
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            // 背景卡片图片
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/zevo_home_card.webp'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // 卡片内容布局
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 上方：三张图片水平排列
                    Row(
                      children: [
                        // 第一张图片（主要图片，占更多宽度）
                        Expanded(
                          flex: 1,
                          child: _buildMainImage(images.isNotEmpty ? images[0] : null),
                        ),
                        const SizedBox(width: 16),
                        // 第二张图片
                        if (images.length >= 2)
                          Expanded(
                            child: _buildSmallImage(images[1]),
                          ),
                        if (images.length >= 2)
                          const SizedBox(width: 8),
                        // 第三张图片
                        if (images.length >= 3)
                          Expanded(
                            child: _buildSmallImage(images[2]),
                          ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // 中间：用户名称
                    SizedBox(
                      width: 120, // 固定宽度91px
                      child: Text(
                        user['name'] ?? 'Unknown',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1, // 最多两行
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }

  Widget _buildMainImage(String? imagePath) {
    if (imagePath == null) {
      return Container(
        height: 120, // 与辅助图片高度一致
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: const Center(
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 40,
          ),
        ),
      );
    }

    return Container(
      height: 120, // 与辅助图片高度一致
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imagePath,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey.withOpacity(0.3),
              child: const Icon(Icons.person, color: Colors.white),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSmallImage(String imagePath) {
    return Container(
      height: 120, // 与主图片高度一致
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey.withOpacity(0.3),
              child: const Icon(Icons.person, color: Colors.white, size: 20),
            );
          },
        ),
      ),
    );
  }


}
