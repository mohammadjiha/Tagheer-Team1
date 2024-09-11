import 'package:flutter/material.dart';
import 'package:tageer/view/Screen/Login/body/body_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LoginBody(),
      ),
    );
  }
}
