import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner_ads2.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Home/Screen/home_screen.dart';
import 'package:tageer/view/Screen/Login&Register/Body/state_body.dart';
import 'package:tageer/view/Screen/Login/body/body_login.dart';
import 'package:tageer/view/Screen/Register/widget/textfled.dart';

import '../../../../admaneger/baneer_adds/banner_adds.dart';
import '../../Login&Register/Screen/start.dart';
import '../../Login/widget/box_both.dart';

class BodySinup extends StatefulWidget {
  const BodySinup({super.key});

  @override
  State<BodySinup> createState() => _BodySinupState();
}

class _BodySinupState extends State<BodySinup> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool obscure = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController passwordConfirm = TextEditingController();

  Future<void> _singup(BuildContext context) async {
    setState(() {});
    try {
      if (passwordconfirm()) {
        final UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: _emailController.text.trim(),
                password: _passwordController.text.trim());
        Navigator.of(context).pushReplacementNamed((HomeScreen.RoutName));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Failed to sign in. Please check your credentials.")));
    }
  }

  bool passwordconfirm() {
    if (_passwordController.text.trim() == passwordConfirm.text.trim()) {
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Passwords do not match. Please try again.")));
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    passwordConfirm.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
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
                height: 8.h,
              ),
              RichText(
                text: TextSpan(
                  text: 'إنشاء حساب جديد',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              /*    Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الاسم',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10.sp,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Textfeild(
                hint: 'قم بأدخال اسمك',
                obscur: false,
                Type: TextInputType.name,
                textEditingController: TextEditingController(),
              ),*/
              SizedBox(
                height: 1.h,
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
              Textfeild(
                hint: 'ex:mohammad@gmail.com',
                obscur: false,
                Type: TextInputType.emailAddress,
                textEditingController: _emailController,
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
              SizedBox(
                height: 1.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'تأكيد كلمة المرور',
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
                controller: passwordConfirm,
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
              SizedBox(
                height: 2.h,
              ),
              GestureDetector(
                onTap: ()=>_singup(context),
                child: Container(
                  alignment: Alignment.center,
                  height: 5.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: color.backgraound_splash,
                  ),
                  child: Text(
                    'إنشاء حساب',
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
              Text(
                'إنشاء حساب باستخدام',
                style: TextStyle(
                    fontSize: 10.sp,
                    color: const Color.fromRGBO(136, 136, 136, 1),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const LoginBody());
                    },
                    child: Text(
                      ' تسجيل الدخول',
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: color.backgraound_splash,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    ' هل لديك حساب؟ ',
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: const Color.fromRGBO(136, 136, 136, 1),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 2.h,),
              BannerAds2()
            ],
          ),
        ),
      ),
    );
  }
}
