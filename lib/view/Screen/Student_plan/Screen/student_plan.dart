import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner4.dart';
import 'package:tageer/admaneger/baneer_adds/banner_adds.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Biologyplan/Screen/biologyplan.dart';
import 'package:tageer/view/Screen/Student_plan/Widget/chioc_studaint.dart';
import 'package:tageer/view/Screen/mathematics_plan/Screen/mathematics.dart';
import 'package:tageer/view/Screen/physics_plan/Screen/physics_plan.dart';

import '../../Home/Screen/home_screen.dart';
import '../../Student_plan2/Screen/student_plan2.dart';

class StudentPlan extends StatelessWidget {
  static const String RoutName = 'StudentPlan';

  const StudentPlan({super.key});

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
                  'اختر التخصص',
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
                          Get.toNamed(Studentplan2.RoutName);
                        },
                        child: const ChiocStudent(
                          images: 'assets/image/image-removebg-preview (2).png',
                          Text11: 'قسم الكيمياء',
                          Text12: 'مواد مشتركة/الخطة الشجرية',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GestureDetector(
                        onTap: () {
                         Get.toNamed(PhysicsPlan.RoutName);
                        },
                        child: const ChiocStudent(
                          images: 'assets/image/image-removebg-preview (1).png',
                          Text11: 'قسم الفيزياء',
                          Text12: 'مواد مشتركة/الخطة الشجرية',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GestureDetector(
                        onTap: () {
                         Get.toNamed(MathPlan.RoutName);
                        },
                        child: const ChiocStudent(
                          images: 'assets/image/image-removebg-preview.png',
                          Text11: 'قسم الرياضيات',
                          Text12: 'مواد مشتركة/الخطة الشجرية',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GestureDetector(
                        onTap: () {
                         Get.toNamed(BiologyPlan.RoutName);
                        },
                        child: const ChiocStudent(
                          images: 'assets/image/image-removebg-preview (3).png',
                          Text11: 'قسم الأحياء',
                          Text12: 'مواد مشتركة/الخطة الشجرية',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                       BannerAds4(),
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
