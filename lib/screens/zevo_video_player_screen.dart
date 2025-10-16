import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ZevoVideoPlayerScreen extends StatefulWidget {
  final Map<String, dynamic> user;

  const ZevoVideoPlayerScreen({
    super.key,
    required this.user,
  });

  @override
  State<ZevoVideoPlayerScreen> createState() => _ZevoVideoPlayerScreenState();
}

class _ZevoVideoPlayerScreenState extends State<ZevoVideoPlayerScreen> {
  VideoPlayerController? _controller;
  bool _isPlaying = false;
  double _progress = 0.0;
  List<Map<String, dynamic>> _tutorials = [];
  Map<String, dynamic>? _currentTutorial;
  bool _isLoading = true;
  bool _isHidden = false;

  @override
  void initState() {
    super.initState();
    _checkHiddenStatus();
    _loadTutorials();
  }

  Future<void> _checkHiddenStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final userId = widget.user['id']?.toString() ?? '1';
    final isHidden = prefs.getBool('hidden_user_$userId') ?? false;
    setState(() {
      _isHidden = isHidden;
    });
  }

  Future<void> _loadTutorials() async {
    try {
      final String response = await rootBundle.loadString('assets/dreswell/CreateInkwell/fitness_tutorials.json');
      final data = json.decode(response);
      final List tutorials = data['videos'];
      
      setState(() {
        _tutorials = List<Map<String, dynamic>>.from(tutorials);
        // 根据用户ID选择对应的教程视频
        final userIndex = (widget.user['id']?.toString() ?? '1').replaceAll('user_', '');
        final tutorialIndex = (int.tryParse(userIndex) ?? 1) - 1;
        if (tutorialIndex >= 0 && tutorialIndex < _tutorials.length) {
          _currentTutorial = _tutorials[tutorialIndex];
        } else {
          _currentTutorial = _tutorials.first;
        }
      });

      // 初始化视频播放器
      if (_currentTutorial != null) {
        await _initializeVideoPlayer();
      }
      
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _initializeVideoPlayer() async {
    if (_currentTutorial != null) {
      _controller = VideoPlayerController.asset(_currentTutorial!['video_file']);
      await _controller!.initialize();
      _controller!.addListener(() {
        if (_controller!.value.isInitialized) {
          setState(() {
            _progress = _controller!.value.position.inMilliseconds / 
                       _controller!.value.duration.inMilliseconds;
            _isPlaying = _controller!.value.isPlaying;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: const Center(
          child: CircularProgressIndicator(
            color: Color(0xFFBBFF2F),
          ),
        ),
      );
    }

    if (_isHidden) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.visibility_off,
                color: Colors.white.withOpacity(0.5),
                size: 80,
              ),
              const SizedBox(height: 20),
              Text(
                'Content Hidden',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'This content has been hidden based on your preferences.',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFBBFF2F),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: const Text(
                  'Go Back',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 视频播放区域
          Container(
            width: double.infinity,
            height: double.infinity,
            child: _controller != null && _controller!.value.isInitialized
                ? Stack(
                    children: [
                      // 视频播放器
                      Center(
                        child: AspectRatio(
                          aspectRatio: _controller!.value.aspectRatio,
                          child: VideoPlayer(_controller!),
                        ),
                      ),
                    ],
                  )
                : Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_currentTutorial?['cover_image'] ?? ''),
                        fit: BoxFit.cover,
                        onError: (exception, stackTrace) {
                          // 如果图片加载失败，显示默认背景
                        },
                      ),
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // 加载指示器
                            const CircularProgressIndicator(
                              color: Color(0xFFBBFF2F),
                            ),
                            const SizedBox(height: 20),
                            // 视频标题
                            Text(
                              _currentTutorial?['title'] ?? 'Fitness Tutorial',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            // 视频描述
                            Text(
                              _currentTutorial?['description'] ?? 'Fitness training video',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            // 难度等级
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: const Color(0xFFBBFF2F).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color(0xFFBBFF2F),
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                _currentTutorial?['difficulty_level'] ?? 'Beginner',
                                style: const TextStyle(
                                  color: Color(0xFFBBFF2F),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          ),
          // 顶部控制栏
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                top: 50,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Row(
                children: [
                  // 返回按钮
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                  const Spacer(),
                  // 不感兴趣按钮
                  GestureDetector(
                    onTap: () => _showNotInterestedDialog(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.thumb_down,
                            color: Colors.white.withOpacity(0.8),
                            size: 16,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'Not Interested',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
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
          // 底部控制栏
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 进度条
                  Slider(
                    value: _progress,
                    onChanged: (value) {
                      if (_controller != null && _controller!.value.isInitialized) {
                        final position = Duration(milliseconds: (value * _controller!.value.duration.inMilliseconds).round());
                        _controller!.seekTo(position);
                      }
                    },
                    activeColor: const Color(0xFFBBFF2F),
                    inactiveColor: Colors.white.withOpacity(0.3),
                  ),
                  const SizedBox(height: 10),
                  // 时间显示和控制按钮
                  Row(
                    children: [
                      Text(
                        _controller != null && _controller!.value.isInitialized
                            ? _formatTime(_controller!.value.position.inSeconds.toDouble())
                            : '00:00',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        _controller != null && _controller!.value.isInitialized
                            ? _formatTime(_controller!.value.duration.inSeconds.toDouble())
                            : '00:00',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const Spacer(),
                      // 重播按钮
                      GestureDetector(
                        onTap: () {
                          if (_controller != null && _controller!.value.isInitialized) {
                            _controller!.seekTo(Duration.zero);
                            _controller!.pause();
                          }
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.replay,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      // 播放/暂停按钮
                      GestureDetector(
                        onTap: () {
                          if (_controller != null && _controller!.value.isInitialized) {
                            if (_isPlaying) {
                              _controller!.pause();
                            } else {
                              _controller!.play();
                            }
                          }
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFBBFF2F),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            _isPlaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      // 快进按钮
                      GestureDetector(
                        onTap: () {
                          if (_controller != null && _controller!.value.isInitialized) {
                            final currentPosition = _controller!.value.position;
                            final newPosition = currentPosition + const Duration(seconds: 10);
                            _controller!.seekTo(newPosition);
                          }
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.fast_forward,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  String _formatTime(double seconds) {
    final minutes = (seconds / 60).floor();
    final remainingSeconds = (seconds % 60).floor();
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _showNotInterestedDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF1A1A1A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            'Not Interested?',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'Are you sure you want to hide this content? This action will hide this video from your recommendations.',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 16,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _hideContent();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFBBFF2F),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Hide Content',
                style: TextStyle(
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

  Future<void> _hideContent() async {
    final prefs = await SharedPreferences.getInstance();
    final userId = widget.user['id']?.toString() ?? '1';
    await prefs.setBool('hidden_user_$userId', true);
    
    setState(() {
      _isHidden = true;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Content hidden successfully',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: const Color(0xFFBBFF2F),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
