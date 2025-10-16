import 'package:flutter/material.dart';
import 'dart:async';

// Zevo视频通话用户模型
class ZevoVideoCallUser {
  final String id;
  final String name;
  final String displayName;
  final String avatar;
  final String background;
  
  ZevoVideoCallUser({
    required this.id,
    required this.name, 
    required this.displayName,
    required this.avatar,
    required this.background,
  });
}

class ZevoVideoCallScreen extends StatefulWidget {
  final ZevoVideoCallUser user;

  const ZevoVideoCallScreen({
    super.key,
    required this.user,
  });

  @override
  State<ZevoVideoCallScreen> createState() => _ZevoVideoCallScreenState();
}

class _ZevoVideoCallScreenState extends State<ZevoVideoCallScreen> {
  bool _isZevoCalling = true;
  bool _showZevoOfflineMessage = false;
  bool _isZevoConnected = false;
  int _zevoCountdown = 0; // 将在_startZevoCountdown中设置
  Timer? _zevoTimer;
  Timer? _zevoCallTimer;
  int _zevoCallDuration = 0; // 通话时长（秒）

  @override
  void initState() {
    super.initState();
    _startZevoCountdown();
  }

  @override
  void dispose() {
    _zevoTimer?.cancel();
    _zevoCallTimer?.cancel();
    super.dispose();
  }

  void _startZevoCountdown() {
    // 只有第10个用户才能接通，其他用户20秒后挂断
    final maxZevoCountdown = widget.user.id == '10' ? 5 : 20;
    _zevoCountdown = maxZevoCountdown;
    
    _zevoTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _zevoCountdown--;
      });
      
      if (_zevoCountdown <= 0) {
        _zevoTimer?.cancel();
        
        if (widget.user.id == '10') {
          // 第10个用户接通
          setState(() {
            _isZevoCalling = false;
            _isZevoConnected = true;
          });
          
          // 启动通话计时器
          _startZevoCallTimer();
        } else {
          // 其他用户20秒后挂断
          setState(() {
            _isZevoCalling = false;
            _showZevoOfflineMessage = true;
          });
          
          // 显示挂断弹窗
          _showZevoOfflineDialog();
        }
      }
    });
  }

  void _startZevoCallTimer() {
    _zevoCallTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _zevoCallDuration++;
        });
      }
    });
  }

  String _formatZevoCallDuration(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _showZevoOfflineDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
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
                  Icons.signal_wifi_off,
                  color: Colors.orange,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'Zevo Connection Failed',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          content: Text(
            '${widget.user.displayName} is currently offline.\nPlease try again later.',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
              height: 1.4,
            ),
          ),
          actions: [
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // 关闭弹窗
                  Navigator.of(context).pop(); // 返回上一页面
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFBBFF2F),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'OK',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // 用户背景图片
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.user.background),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            // 背景遮罩（只在拨打时显示，接通后不显示遮罩以显示前置摄像头）
            if (!_isZevoConnected)
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(0.3),
              ),
            
            // 小窗口显示用户头像（接通后显示）
            if (_isZevoConnected)
              Positioned(
                top: 140,
                left: 20,
                child: Container(
                  width: 117,
                  height: 117,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.grey[800],
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.videocam,
                              color: Colors.white,
                              size: 28,
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Zevo Call\nActive',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            // 用户姓名（独立导航栏）
            Positioned(
              top: 56,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Text(
                  widget.user.displayName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // 底部控制区域
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom + 40,
                  left: 40,
                  right: 40,
                  top: 40,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(_isZevoConnected ? 0.4 : 0.7),
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // 通话计时器（只在接通时显示）
                    if (_isZevoConnected)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFBBFF2F),
                              Color(0xFF88CC22),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFFBBFF2F).withOpacity(0.3),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.access_time,
                              color: Colors.white,
                              size: 16,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              _formatZevoCallDuration(_zevoCallDuration),
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (_isZevoConnected) const SizedBox(height: 24),
                    
                    // Zevo挂断按钮
                    GestureDetector(
                      onTap: _showZevoOfflineMessage ? null : () {
                        _zevoTimer?.cancel();
                        _zevoCallTimer?.cancel();
                        setState(() {
                          _isZevoCalling = false;
                          _isZevoConnected = false;
                        });
                        // 结束Zevo通话
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        'assets/zevo_call_answer.webp',
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFBBFF2F),
                                  Color(0xFF88CC22),
                                ],
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFFBBFF2F).withOpacity(0.4),
                                  blurRadius: 15,
                                  offset: const Offset(0, 6),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.call_end,
                              color: Colors.white,
                              size: 32,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Zevo状态文本
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        _showZevoOfflineMessage
                            ? '${widget.user.displayName} is offline'
                            : _isZevoCalling 
                                ? 'Zevo calling ${widget.user.displayName}...'
                                : _isZevoConnected
                                    ? 'Zevo connected with ${widget.user.displayName}'
                                    : 'Ending Zevo call...',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}