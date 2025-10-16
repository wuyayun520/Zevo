import 'package:flutter/material.dart';
import 'zevo_chat_screen.dart';
import 'zevo_video_call_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ZevoUserDetailScreen extends StatefulWidget {
  final Map<String, dynamic> user;

  const ZevoUserDetailScreen({
    super.key,
    required this.user,
  });

  @override
  State<ZevoUserDetailScreen> createState() => _ZevoUserDetailScreenState();
}

class _ZevoUserDetailScreenState extends State<ZevoUserDetailScreen> {
  bool _isBlocked = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkBlockStatus();
  }

  Future<void> _checkBlockStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final blockedUsersJson = prefs.getString('blocked_users') ?? '[]';
      final List<dynamic> blockedUsers = json.decode(blockedUsersJson);
      
      final isBlocked = blockedUsers.any((blockedUser) => 
          blockedUser['id'] == widget.user['id']);
      
      setState(() {
        _isBlocked = isBlocked;
        _isLoading = false;
      });
    } catch (e) {
      print('Error checking block status: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/zevo_all_bg.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(
            child: CircularProgressIndicator(
              color: Color(0xFFBBFF2F),
            ),
          ),
        ),
      );
    }

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
          Positioned.fill(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 120, 20, 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (_isBlocked) 
                    _buildBlockedContent()
                  else ...[
                    // 用户头像和基本信息
                    _buildUserHeader(context),
                    const SizedBox(height: 30),
                    // 用户图片网格
                    _buildUserImages(),
                    const SizedBox(height: 30),
                    // 用户详细信息
                    _buildUserInfo(),
                    const SizedBox(height: 30),
                    // 成就和认证
                    _buildAchievements(),
                    const SizedBox(height: 30),
                    // 个人简介
                    _buildBio(),
                  ],
                ],
              ),
            ),
          ),
          // 返回按钮 - 放在最上层
          Positioned(
            top: 60,
            left: 20,
            child: GestureDetector(
              onTap: () {
                print('返回按钮被点击'); // 调试信息
                try {
                  Navigator.pop(context);
                  print('Navigator.pop 执行成功');
                } catch (e) {
                  print('Navigator.pop 执行失败: $e');
                }
              },
              child: Container(
                width: 50, // 进一步增加点击区域
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color(0xFFBBFF2F),
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
          ),
          // 更多菜单按钮 - 右上角
          Positioned(
            top: 60,
            right: 20,
            child: GestureDetector(
              onTap: () => _showMoreMenu(context),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color(0xFFBBFF2F),
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBlockedContent() {
    return Container(
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFBBFF2F).withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          // 拉黑图标
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.1),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.red.withOpacity(0.3),
                width: 2,
              ),
            ),
            child: const Icon(
              Icons.block,
              color: Colors.red,
              size: 60,
            ),
          ),
          const SizedBox(height: 30),
          // 标题
          Text(
            'User Blocked',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          // 描述
          Text(
            'You have blocked ${widget.user['name'] ?? 'this user'}. Their profile is hidden from you.',
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          // 取消拉黑按钮
          ElevatedButton(
            onPressed: () => _unblockUser(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFBBFF2F),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Text(
              'Unblock User',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserHeader(BuildContext context) {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 左侧：用户头像和信息
          Expanded(
            child: Column(
              children: [
                // 用户头像
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: _buildUserAvatar(),
                  ),
                ),
                const SizedBox(height: 20),
                // 用户名称
                Text(
                  widget.user['name'] ?? 'Unknown',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                // 运动类型
                Text(
                  widget.user['workoutStyle'] ?? 'Fitness Enthusiast',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                // 健身水平和经验
                Text(
                  '${widget.user['fitnessLevel'] ?? 'Intermediate'} • ${widget.user['experience'] ?? '2 years'}',
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          // 右侧：操作按钮
          Column(
            children: [
              // Say hi 按钮
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ZevoChatScreen(
                        userId: widget.user['id'] ?? 'unknown',
                        userName: widget.user['name'] ?? 'Unknown',
                        userAvatar: widget.user['images']?.isNotEmpty == true 
                            ? widget.user['images'][0] 
                            : 'assets/placeholder_person.webp',
                      ),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/zevo_send_message.webp',
                  width: 70,
                  height: 70,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.message,
                      color: Colors.white,
                      size: 70,
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Call 按钮
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ZevoVideoCallScreen(
                        user: ZevoVideoCallUser(
                          id: widget.user['id'] ?? 'unknown',
                          name: widget.user['name'] ?? 'Unknown',
                          displayName: widget.user['name'] ?? 'Unknown',
                          avatar: widget.user['images']?.isNotEmpty == true 
                              ? widget.user['images'][0] 
                              : 'assets/placeholder_person.webp',
                          background: widget.user['images']?.isNotEmpty == true 
                              ? widget.user['images'][0] 
                              : 'assets/zevo_all_bg.webp',
                        ),
                      ),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/zevo_me_call.webp',
                  width: 70,
                  height: 70,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 70,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserAvatar() {
    final List<dynamic> images = widget.user['images'] ?? [];
    if (images.isEmpty) {
      return Container(
        color: Colors.grey.withOpacity(0.3),
        child: const Center(
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 60,
          ),
        ),
      );
    }

    return Image.asset(
      images[0],
      width: 120,
      height: 120,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.grey.withOpacity(0.3),
          child: const Center(
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 60,
            ),
          ),
        );
      },
    );
  }

  Widget _buildUserImages() {
    final List<dynamic> images = widget.user['images'] ?? [];
    if (images.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Photos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.2,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _showImageDialog(context, images, index);
              },
              child: Container(
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
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey.withOpacity(0.3),
                        child: const Center(
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildUserInfo() {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Personal Info',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _buildInfoRow('Age', '${widget.user['age'] ?? 'N/A'} years'),
          _buildInfoRow('Gender', widget.user['gender'] ?? 'N/A'),
          _buildInfoRow('Height', widget.user['height'] ?? 'N/A'),
          _buildInfoRow('Weight', widget.user['weight'] ?? 'N/A'),
          _buildInfoRow('Location', widget.user['location'] ?? 'N/A'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAchievements() {
    final List<dynamic> achievements = widget.user['achievements'] ?? [];
    final List<dynamic> specialties = widget.user['specialties'] ?? [];
    final List<dynamic> certifications = widget.user['certifications'] ?? [];

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Achievements & Skills',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          if (achievements.isNotEmpty) ...[
            _buildSection('Achievements', achievements),
            const SizedBox(height: 16),
          ],
          if (specialties.isNotEmpty) ...[
            _buildSection('Specialties', specialties),
            const SizedBox(height: 16),
          ],
          if (certifications.isNotEmpty) ...[
            _buildSection('Certifications', certifications),
          ],
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<dynamic> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFFBBFF2F),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '• ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Expanded(
                child: Text(
                  item.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        )).toList(),
      ],
    );
  }

  Widget _buildBio() {
    final String bio = widget.user['bio'] ?? '';
    if (bio.isEmpty) return const SizedBox.shrink();

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            bio,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  void _showMoreMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 标题
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'More Options',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              // 菜单项
              if (_isBlocked) 
                _buildMenuOption(
                  context,
                  icon: Icons.check_circle,
                  title: 'Unblock User',
                  subtitle: 'Unblock this user and show their profile',
                  color: const Color(0xFFBBFF2F),
                  onTap: () => _unblockUser(context),
                )
              else ...[
                _buildMenuOption(
                  context,
                  icon: Icons.block,
                  title: 'Block User',
                  subtitle: 'Block this user and hide their profile',
                  color: Colors.red,
                  onTap: () => _blockUser(context),
                ),
                _buildMenuOption(
                  context,
                  icon: Icons.report,
                  title: 'Report User',
                  subtitle: 'Report this user for inappropriate behavior',
                  color: Colors.orange,
                  onTap: () => _reportUser(context),
                ),
              ],
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMenuOption(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                icon,
                color: color,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[400],
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  void _blockUser(BuildContext context) async {
    // 显示确认对话框
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.block,
                  color: Colors.red,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'Block User',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          content: Text(
            'Are you sure you want to block ${widget.user['name'] ?? 'this user'}? You will no longer see their profile or receive messages from them.',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
              height: 1.4,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Block',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (confirmed == true) {
      // 先关闭确认对话框
      Navigator.of(context).pop();
      
      // 保存到本地存储
      await _saveBlockedUser();
      
      // 更新状态，隐藏用户信息
      setState(() {
        _isBlocked = true;
      });
      
      // 显示成功消息
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${widget.user['name'] ?? 'User'} has been blocked'),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  void _reportUser(BuildContext context) async {
    // 显示举报对话框
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.report,
                  color: Colors.orange,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'Report User',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          content: Text(
            'Are you sure you want to report ${widget.user['name'] ?? 'this user'}? Our team will review this report and take appropriate action.',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
              height: 1.4,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Report',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (confirmed == true) {
      // 先关闭确认对话框
      Navigator.of(context).pop();
      
      // 保存举报记录
      await _saveReportedUser();
      
      // 显示成功消息
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${widget.user['name'] ?? 'User'} has been reported. Thank you for helping keep our community safe.'),
          backgroundColor: Colors.orange,
          duration: const Duration(seconds: 3),
        ),
      );
      
      // 关闭菜单
      Navigator.of(context).pop();
    }
  }

  Future<void> _saveBlockedUser() async {
    try {
      print('开始保存拉黑用户: ${widget.user['name']}');
      final prefs = await SharedPreferences.getInstance();
      final blockedUsersJson = prefs.getString('blocked_users') ?? '[]';
      print('当前拉黑列表JSON: $blockedUsersJson');
      
      final List<dynamic> blockedUsers = json.decode(blockedUsersJson);
      print('解析后的拉黑列表: $blockedUsers');
      
      // 添加当前用户到拉黑列表
      final userToBlock = {
        'id': widget.user['id'],
        'name': widget.user['name'],
        'blockedAt': DateTime.now().toIso8601String(),
      };
      print('要添加的用户: $userToBlock');
      
      blockedUsers.add(userToBlock);
      print('添加后的拉黑列表: $blockedUsers');
      
      // 保存到本地存储
      final newJson = json.encode(blockedUsers);
      print('要保存的JSON: $newJson');
      
      final success = await prefs.setString('blocked_users', newJson);
      print('保存结果: $success');
      
      // 验证保存是否成功
      final savedJson = prefs.getString('blocked_users');
      print('验证保存的JSON: $savedJson');
      
      print('User blocked successfully: ${widget.user['name']}');
    } catch (e) {
      print('Error blocking user: $e');
    }
  }

  void _unblockUser(BuildContext context) async {
    // 显示确认对话框
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFBBFF2F).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check_circle,
                  color: Color(0xFFBBFF2F),
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'Unblock User',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          content: Text(
            'Are you sure you want to unblock ${widget.user['name'] ?? 'this user'}? You will be able to see their profile and receive messages from them again.',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
              height: 1.4,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFBBFF2F),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Unblock',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (confirmed == true) {
      // 先关闭确认对话框
      Navigator.of(context).pop();
      
      // 从本地存储中移除
      await _removeBlockedUser();
      
      // 更新状态，显示用户信息
      setState(() {
        _isBlocked = false;
      });
      
      // 显示成功消息
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${widget.user['name'] ?? 'User'} has been unblocked'),
          backgroundColor: const Color(0xFFBBFF2F),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  Future<void> _removeBlockedUser() async {
    try {
      print('开始取消拉黑用户: ${widget.user['name']}');
      final prefs = await SharedPreferences.getInstance();
      final blockedUsersJson = prefs.getString('blocked_users') ?? '[]';
      print('当前拉黑列表JSON: $blockedUsersJson');
      
      final List<dynamic> blockedUsers = json.decode(blockedUsersJson);
      print('解析后的拉黑列表: $blockedUsers');
      
      // 移除当前用户
      blockedUsers.removeWhere((blockedUser) => 
          blockedUser['id'] == widget.user['id']);
      
      print('移除后的拉黑列表: $blockedUsers');
      
      // 保存到本地存储
      final newJson = json.encode(blockedUsers);
      print('要保存的JSON: $newJson');
      
      final success = await prefs.setString('blocked_users', newJson);
      print('保存结果: $success');
      
      // 验证保存是否成功
      final savedJson = prefs.getString('blocked_users');
      print('验证保存的JSON: $savedJson');
      
      print('User unblocked successfully: ${widget.user['name']}');
    } catch (e) {
      print('Error unblocking user: $e');
    }
  }

  Future<void> _saveReportedUser() async {
    try {
      print('开始保存举报用户: ${widget.user['name']}');
      final prefs = await SharedPreferences.getInstance();
      final reportedUsersJson = prefs.getString('reported_users') ?? '[]';
      print('当前举报列表JSON: $reportedUsersJson');
      
      final List<dynamic> reportedUsers = json.decode(reportedUsersJson);
      print('解析后的举报列表: $reportedUsers');
      
      // 添加当前用户到举报列表
      final userToReport = {
        'id': widget.user['id'],
        'name': widget.user['name'],
        'reportedAt': DateTime.now().toIso8601String(),
      };
      print('要添加的举报用户: $userToReport');
      
      reportedUsers.add(userToReport);
      print('添加后的举报列表: $reportedUsers');
      
      // 保存到本地存储
      final newJson = json.encode(reportedUsers);
      print('要保存的举报JSON: $newJson');
      
      final success = await prefs.setString('reported_users', newJson);
      print('举报保存结果: $success');
      
      // 验证保存是否成功
      final savedJson = prefs.getString('reported_users');
      print('验证保存的举报JSON: $savedJson');
      
      print('User reported successfully: ${widget.user['name']}');
    } catch (e) {
      print('Error reporting user: $e');
    }
  }

  void _showImageDialog(BuildContext context, List<dynamic> images, int initialIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              // 全屏图片查看器
              PageView.builder(
                controller: PageController(initialPage: initialIndex),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return InteractiveViewer(
                    minScale: 0.5,
                    maxScale: 3.0,
                    child: Center(
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: double.infinity,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey.withOpacity(0.3),
                            child: const Center(
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 100,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
              // 关闭按钮
              Positioned(
                top: 50,
                right: 20,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ),
              // 图片指示器
              if (images.length > 1)
                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      images.length,
                      (index) => Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: index == initialIndex 
                              ? Colors.white 
                              : Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
