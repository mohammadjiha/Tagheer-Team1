import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tageer/view/Screen/Home/Screen/home_screen.dart';

class LoginPageA extends StatelessWidget {
  static const Routname='LoginPageA ';
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signInAnonymously(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      // يمكنك هنا تنفيذ أي إجراءات بعد تسجيل الدخول بنجاح، مثل الانتقال إلى الصفحة التالية
      Navigator.of(context).pushReplacementNamed(HomeScreen.RoutName);
    } catch (e) {
      print('Failed to sign in anonymously: $e');
      // يمكنك هنا إظهار رسالة خطأ للمستخدم إذا كان هناك خطأ في التسجيل العشوائي
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => signInAnonymously(context),
          child: Text('تسجيل الدخول كزائر'),
        ),
      ),
    );
  }
}
