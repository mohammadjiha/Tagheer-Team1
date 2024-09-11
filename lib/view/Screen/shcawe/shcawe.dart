import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/shcawe/dev_email.dart';
import 'package:tageer/view/Screen/shcawe/widget/widget.dart';
import 'package:tageer/view/Screen/teachers_emails/bio/teacher_name_bio.dart';
import 'package:tageer/view/Screen/teachers_emails/chem/teacher_name_chem.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../admaneger/baneer_adds/banner_adds.dart';
import '../Home/Screen/home_screen.dart';

class ScreenDev extends StatelessWidget {
  static const String RoutName = 'ScreenDev';
  Future<void> _openWebPage(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  const ScreenDev({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.backgraound_splash,
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Text(
                  'الدعم الفني',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(102, 189, 255, 1),
                        borderRadius: BorderRadius.circular(50)),
                    height: 5.h,
                    width: 11.w,
                    child: Image.asset('assets/image/arrow_forward_ios.png'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                  color: color.backgraound_Home,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(DevEmail.RoutName);
                            },
                            child: const DevEmailWidget(Text11:'Gmail', Text12: 'أرسل صورة المشكلة عبر الإيميل'),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              _openWebPage('https://www.facebook.com/profile.php?id=100004205232406'); // Replace with your URL
                            },
                            child: const DevEmailWidget(Text11:'Facebook', Text12: 'أرسل صورة المشكلة'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
