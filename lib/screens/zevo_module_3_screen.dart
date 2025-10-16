import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'zevo_video_player_screen.dart';

class ZevoModule3Screen extends StatefulWidget {
  const ZevoModule3Screen({super.key});

  @override
  State<ZevoModule3Screen> createState() => _ZevoModule3ScreenState();
}

class _ZevoModule3ScreenState extends State<ZevoModule3Screen> {
  List<Map<String, dynamic>> _fitnessUsers = [];
  bool _isLoading = true;

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
        _fitnessUsers = List<Map<String, dynamic>>.from(users);
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 5),
                // 顶部标题图片
                Center(
                  child: Image.asset(
                    'assets/zevo_course_tutorial.webp',
                    fit: BoxFit.contain,
                  ),
                ),
                // 卡片背景
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/zevo_course_training_card_bg.webp'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: SizedBox(
                    height: 440, // 设置卡片高度
                    width: double.infinity,
                    child: _isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFFBBFF2F),
                            ),
                          )
                        : _buildTutorialContent(),
                  ),
                ),
                const SizedBox(height: 20),
                // 选择文字图片
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/zevo_course_select.webp',
                      width: 200,
                      height: 30,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // 课程列表
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _buildCourseList(),
                ),
                const SizedBox(height: 100), // 底部间距，避免被TabBar遮挡
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTutorialContent() {
    if (_fitnessUsers.isEmpty) {
      return const Center(
        child: Text(
          'No tutorial available',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      );
    }

    // 获取第一个用户作为教程封面
    final firstUser = _fitnessUsers.first;
    final images = List<String>.from(firstUser['images'] ?? []);
    
    if (images.isEmpty) {
      return const Center(
        child: Text(
          'No tutorial images available',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => _navigateToVideoPlayer(firstUser),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 48.0,
          left: 6.0,
          right: 6.0,
          bottom: 12.0,
        ),
        child: Stack(
          children: [
          // 教程封面图片
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                images.first,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[800],
                    child: const Center(
                      child: Icon(
                        Icons.play_circle_outline,
                        color: Color(0xFFBBFF2F),
                        size: 60,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // 信息框 - 卡路里消耗
          Positioned(
            bottom: 16,
            left: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.25),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFFBBFF2F).withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBBFF2F).withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/zevo_course_kcal.webp',
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        '268',
                        style: TextStyle(
                          color: Color(0xFFBBFF2F),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Kcal',
                        style: TextStyle(
                          color: Color(0xFFBBFF2F),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // 信息框 - 持续时间
          Positioned(
            bottom: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.25),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFFBBFF2F).withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBBFF2F).withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/zevo_course_clock.webp',
                      width: 16,
                      height: 16,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        '23',
                        style: TextStyle(
                          color: Color(0xFFBBFF2F),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'min',
                        style: TextStyle(
                          color: Color(0xFFBBFF2F),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // 播放按钮 - 在图片中间
          Center(
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFFBBFF2F),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFBBFF2F).withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    ),
  );
  }

  Widget _buildCourseList() {
    if (_fitnessUsers.isEmpty) {
      return const Center(
        child: Text(
          'No courses available',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      );
    }

    // 获取除了第一个用户之外的所有用户（因为第一个用户已经在卡片中显示）
    final remainingUsers = _fitnessUsers.skip(1).toList();

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: remainingUsers.length,
      itemBuilder: (context, index) {
        final user = remainingUsers[index];
        final images = List<String>.from(user['images'] ?? []);
        
        return GestureDetector(
          onTap: () => _navigateToVideoPlayer(user),
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFBBFF2F).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFBBFF2F).withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Row(
              children: [
              // 用户头像
              Container(
                width: 60,
                height: 70,
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
                  child: images.isNotEmpty
                      ? Image.asset(
                          images.first,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[800],
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                            );
                          },
                        )
                      : Container(
                          color: Colors.grey[800],
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                ),
              ),
              const SizedBox(width: 16),
              // 用户信息
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user['name'] ?? 'Unknown User',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      user['bio'] ?? 'Fitness enthusiast',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.fitness_center,
                          color: const Color(0xFFBBFF2F),
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          user['workoutStyle'] ?? 'Training',
                          style: TextStyle(
                            color: const Color(0xFFBBFF2F),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // 关注按钮
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFBBFF2F),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFBBFF2F).withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/zevo_course_follow.webp',
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
  }

  void _navigateToVideoPlayer(Map<String, dynamic> user) {
    // 跳转到视频播放页面
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ZevoVideoPlayerScreen(user: user),
      ),
    );
  }
}
