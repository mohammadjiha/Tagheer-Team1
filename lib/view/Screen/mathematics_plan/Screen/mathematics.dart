import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Student_plan2/Screen/college_screen.dart';
import 'package:tageer/view/Screen/mathematics_plan/Screen/planmath.dart';

import '../../../../admaneger/baneer_adds/banner_adds.dart';
import '../../Student_plan/Screen/student_plan.dart';
import '../../Student_plan/Widget/chioc_studaint.dart';

class MathPlan extends StatelessWidget {
  static const String RoutName = 'MathPlan';

  const MathPlan({super.key});

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
                  'خطة الطالب',
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
                  height: 5.h,
                ),
                Text(
                  'قسم الرياضيات',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 1.h,
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
                          Get.toNamed(CollegeJointScreen.RoutName);
                        },
                        child: const ChiocStudent(
                          images: 'assets/image/icons8-book-50 1.png',
                          Text11: 'المواد المشتركة',
                          Text12: 'قم بالإطلاع عليها',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(PlanMathImage.RoutName);
                        },
                        child: const ChiocStudent(
                          images: 'assets/image/icons8-book-50 1.png',
                          Text11: 'الخطة الشجرية',
                          Text12: 'قم بالإطلاع عليها',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
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
