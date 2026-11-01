import 'dart:async';
import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
  child: Column(
    children: [
      Expanded(
        child: Center(
          child: Image.asset('assets/images/logo.png', width: 120),
        ),
      ),
      const Text('From',
          style: TextStyle(color: AppColors.gray, fontSize: 14)),
      const SizedBox(height: 4),
      Image.asset('assets/images/meta.png', height: 24),
      const SizedBox(height: 24),
    ],
  ),
),
    );
  }
}