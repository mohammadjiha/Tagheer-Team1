import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';

import '../../../../../admaneger/baneer_adds/banner5.dart';
import '../../../mathematucs_student/filesscreen_2/Euclidean geometry/screen/euclidean_geometry_screen.dart';
import '../../filesscreen_4/Experimental design and analysis/screen/Experimental_design_and_analysis.dart';
import '../../filesscreen_4/Hematology/screen/Hematology.dart';
import '../../filesscreen_4/Modeling of biological systems/screen/Modeling_of_biological_systems.dart';
import '../../filesscreen_4/Reactors/screen/Reactors.dart';
import '../../filesscreen_4/computer applications/screen/computer_applications.dart';

class Itemforthbio extends StatelessWidget {
  static const String RoutName = 'Itemforthbio';
  const Itemforthbio({super.key});

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
                          Get.toNamed(Hematology.RoutName);
                        },
                        child: const ChioseItem(text: 'علم دم')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(ModelingOfBioLogicalSystems.RoutName);
                        },
                        child:
                            const ChioseItem(text: 'نمذجة الأنظمة البيولوجية')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(ExperimentalDesignAndAnalysis.RoutName);
                        },
                        child: const ChioseItem(text: 'تصميم التجارب وتحليل')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(ComputerApplications.RoutName);
                        },
                        child: const ChioseItem(text: 'تطبيقات الحاسوب')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(EuclideanGeometry.RoutName);
                        },
                        child: const ChioseItem(text: 'هندسة إقليدية')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Reactors.RoutName);
                        },
                        child: const ChioseItem(text: 'مفاعلات'))
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
