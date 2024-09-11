import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tageer/view/Screen/Home/Screen/home_screen.dart';
import 'package:tageer/view/Screen/Splash%20Screen/Screen/splash.dart';

class Auth extends StatelessWidget {
  static const String RoutName = 'Auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomeScreen();
            } else {
              return const SplashScreen();
            }
          }),
    );
  }
}
