import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner_adds.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Home/Screen/home_screen.dart';

import 'package:tageer/view/Screen/Register/SinUp_screen/sinup_screen.dart';
import 'package:tageer/view/Screen/anonymously_login/anonymously_login.dart';
import 'package:tageer/view/Screen/forget_pas/forget_pas.dart';

import '../../Login&Register/Screen/start.dart';
import '../widget/box_both.dart';

class LoginBody extends StatefulWidget {
  static const String RouteName = 'LoginBody';

  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isload = false;
  bool obscure = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> _signInWithEmailAndPassword(BuildContext context) async {
    setState(() {});
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _emailController.text.trim(),
              password: _passwordController.text.trim());
      Navigator.of(context).pushReplacementNamed(HomeScreen.RoutName);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Failed to sign in. Please check your credentials.")));
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        key: _scaffoldKey, // تعيين GlobalKey للـ Scaffold
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                            height: 3.h,
                            width: 5.w,
                            child: Image.asset('assets/image/22.png'))),
                    Image.asset('assets/image/111.png'),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Image.asset('assets/image/Tagheer Logo.png'),
                SizedBox(
                  height: 3.h,
                ),
                RichText(
                  text: TextSpan(
                    text: 'تسجيل الدخول إلى حسابك',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontFamily: 'Rubik',
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'البريد الإلكتروني',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10.sp,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextField(
                  controller: _emailController,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    hintText: 'ex:mohammad@gmail.com',
                    hintStyle: const TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'كلمة المرور',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10.sp,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: obscure,
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        icon: Icon(
                            obscure ? Icons.visibility : Icons.visibility_off)),
                    hintText: '********',
                    hintStyle: const TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(height: 1.h,),
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){Get.toNamed(ForgetPas.RouteName);},
                    child: Text(
                      "نسيت كلمة المرور",
                      style: TextStyle(fontSize: 14.sp, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                GestureDetector(
                  onTap: () => _signInWithEmailAndPassword(context),
                  child: Container(
                    alignment: Alignment.center,
                    height: 5.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: color.backgraound_splash,
                    ),
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(SinUpScreen.RoutName);
                      },
                      child: Text(
                        ' تسجيل',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: color.backgraound_splash,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      ' ليس لديك حساب ؟ ',
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: const Color.fromRGBO(136, 136, 136, 1),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                BannerAds()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
