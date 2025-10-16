import 'package:flutter/material.dart';
import 'zevo_module_1_screen.dart';
import 'zevo_module_2_screen.dart';
import 'zevo_module_3_screen.dart';
import 'zevo_module_4_screen.dart';

class ZevoMainAppScreen extends StatefulWidget {
  const ZevoMainAppScreen({super.key});

  @override
  State<ZevoMainAppScreen> createState() => _ZevoMainAppScreenState();
}

class _ZevoMainAppScreenState extends State<ZevoMainAppScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const ZevoModule1Screen(),
    const ZevoModule2Screen(),
    const ZevoModule3Screen(),
    const ZevoModule4Screen(),
  ];

  final List<String> _normalIcons = [
    'assets/purple/zevo_tab_nor_1.webp',
    'assets/purple/zevo_tab_nor_2.webp',
    'assets/purple/zevo_tab_nor_3.webp',
    'assets/purple/zevo_tab_nor_4.webp',
  ];

  final List<String> _selectedIcons = [
    'assets/purple/zevo_tab_pre_1.webp',
    'assets/purple/zevo_tab_pre_2.webp',
    'assets/purple/zevo_tab_pre_3.webp',
    'assets/purple/zevo_tab_pre_4.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 主内容区域
          _screens[_currentIndex],
          
          // 底部悬浮 TabBar
          Positioned(
            left: 40,
            right: 40,
            bottom: 40,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF333333),
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  final isSelected = _currentIndex == index;
                  
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                          _currentIndex = index;
                        });
                      
                    },
                    child: Image.asset(
                      isSelected 
                          ? _selectedIcons[index] 
                          : _normalIcons[index],
                      width: 48,
                      height: 48,
                      fit: BoxFit.contain,
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
