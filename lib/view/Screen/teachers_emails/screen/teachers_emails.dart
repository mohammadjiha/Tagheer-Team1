import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/teachers_emails/bio/teacher_name_bio.dart';
import 'package:tageer/view/Screen/teachers_emails/chem/teacher_name_chem.dart';
import 'package:tageer/view/Screen/teachers_emails/math/teacher_name_math.dart';
import 'package:tageer/view/Screen/teachers_emails/physics/teacher_name_physucs.dart';
import 'package:tageer/view/Screen/teachers_emails/widget/teachers_emails_widget.dart';
import '../../../../admaneger/baneer_adds/banner3.dart';
import '../../../../admaneger/baneer_adds/banner6.dart';
import '../../../../admaneger/baneer_adds/banner_adds.dart';
import '../../Home/Screen/home_screen.dart';

class TeachersEmails extends StatelessWidget {
  static const String RoutName = 'TeachersEmails';

  const TeachersEmails({super.key});

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
                  'ايميلات المدرسين',
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
                              Get.toNamed(TeachersNamesChem.RoutName);
                            },
                            child: const TeachersEmailsWidget(Text11:'قسم الكيمياء', Text12: 'ايميلات المدرسين/Teams'),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(TeachersNamesPhysics.RoutName);
                            },
                            child:const TeachersEmailsWidget(Text11:'قسم الفيزياء', Text12: 'ايميلات المدرسين/Teams'),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          GestureDetector(
                            onTap: () {Get.toNamed(TeachersNamesMath.RoutName);},
                            child: const TeachersEmailsWidget(Text11:'قسم الرياضيات', Text12: 'ايميلات المدرسين/Teams'),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          GestureDetector(
                            onTap: () {
                             Get.toNamed(TeachersNamesBio.RoutName);
                            },
                            child: const TeachersEmailsWidget(Text11:'قسم الأحياء', Text12: 'ايميلات المدرسين/Teams'),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          BannerAds6(),
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
