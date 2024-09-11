import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner_adds.dart';
import 'package:tageer/admaneger/baneer_adds/banner_ads2.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Login/body/body_login.dart';
import 'package:tageer/view/Screen/Register/SinUp_screen/sinup_screen.dart';

import '../../../../admaneger/baneer_adds/banner3.dart';
import '../../Home/Screen/home_screen.dart';

class StartBody extends StatelessWidget {
  const StartBody({super.key});
  void signInAnonymously(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
      // يمكنك هنا تنفيذ أي إجراءات بعد تسجيل الدخول بنجاح، مثل الانتقال إلى الصفحة التالية
      Navigator.of(context).pushReplacementNamed(HomeScreen.RoutName);
    } catch (e) {
      print('Failed to sign in anonymously: $e');
      // يمكنك هنا إظهار رسالة خطأ للمستخدم إذا كان هناك خطأ في التسجيل العشوائي
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset('assets/image/Tagheer Logo 1.png'),
          const Spacer(
            flex: 1,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(const SinUpScreen());
                },
                child: Container(
                  width: 42.5.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: color.backgraound_splash, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text('إنشاء',
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: color.backgraound_splash),
                        textAlign: TextAlign.center),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Container(
                  width: 42.5.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: color.backgraound_splash,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(LoginBody.RouteName);
                    },
                    child: Center(
                      child: Text('تسجيل دخول',
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ),
                  ))
            ],
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
