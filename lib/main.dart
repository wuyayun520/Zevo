import 'package:flutter/material.dart';
import 'screens/zevo_login_screen.dart';

void main() {
  runApp(const ZevoApp());
}

class ZevoApp extends StatelessWidget {
  const ZevoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zevo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: const Color(0xFFBBFF2F),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFBBFF2F),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFBBFF2F),
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFBBFF2F),
          foregroundColor: Colors.black,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFBBFF2F),
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      home: const ZevoLoginScreen(),
    );
  }
}
