import 'package:flutter/material.dart';
import 'package:tageer/view/Screen/Login&Register/Screen/start.dart';
import 'package:tageer/view/Screen/Splash%20Screen/Body/splash_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(Start.RoutName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: BodySplash(),
    );
  }
}
