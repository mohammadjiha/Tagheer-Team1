import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/probability_theory/screen/probability_theory.dart';

import '../../../../../admaneger/baneer_adds/banner5.dart';
import '../../filesscreen_2/Calc 3/screen/calc3_screen.dart';
import '../../filesscreen_2/Euclidean geometry/screen/euclidean_geometry_screen.dart';
import '../../filesscreen_2/Linear algebra 1/screen/linear_algebra1_screen.dart';
import '../../filesscreen_2/Real analysis 1/screen/real_analysis1_screen.dart';
import '../../filesscreen_2/hazm barmajiat riadia/screen/hazm_barmajiat_riadia_screen.dart';
import '../../filesscreen_2/usus riadiaat/screen/usus_riadiaat_screen.dart';

class ItemSecondMath extends StatelessWidget {
  static const String RoutName = 'ItemSecondMath';
  const ItemSecondMath({super.key});

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
                  'ملفات المواد',
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
                  onTap: () => Get.back(),
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
                Wrap(
                  alignment: WrapAlignment.spaceAround,
                  spacing: 1.w,
                  runSpacing: 1.h,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(ProbabilityTheory.RoutName);
                        },
                        child: const ChioseItem(text: 'نظرية الإحتمالات')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Clac3.RoutName);
                        },
                        child: const ChioseItem(text: 'تفاضل و تكامل 3')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(HazmBarmajiatRiadia.RoutName);
                        },
                        child: const ChioseItem(text: 'حزم برمجة رياضية')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(RealAnalysis1.RoutName);
                        },
                        child: const ChioseItem(text: 'تحليل حقيقي 1')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(LinearAlgebra1.RoutName);
                        },
                        child: const ChioseItem(text: 'جبر خطي ١')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(UsusRiadiaat.RoutName);
                        },
                        child: const ChioseItem(text: 'أسس رياضيات')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(EuclideanGeometry.RoutName);
                        },
                        child: const ChioseItem(text: 'هندسة إقليدية'))
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                BannerAds5(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
