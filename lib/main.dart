import 'package:flutter/material.dart';
import 'screens/login_page.dart';

void main() {
  runApp(const CvFlutterClementApp());
}

class CvFlutterClementApp extends StatelessWidget {
  const CvFlutterClementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cv_flutter_clement',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF0F4C81),
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
      ),
      home: const LoginPage(),
    );
  }
}