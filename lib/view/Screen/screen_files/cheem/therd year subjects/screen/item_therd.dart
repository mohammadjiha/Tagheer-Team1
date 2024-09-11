import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Automated%20analysis%201/screen/automated_analysis_1.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Automated%20analysis%202/screen/automated_analysis_2.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Lap%20Automated%20abalysis/screen/lap_automated_abalysis.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/LapVizcal/screen/lap_vizcal.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Lap_InOrganc/screen/lapinorganc.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Vizcal%202/Screen/Vizcal2.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/Vizcal%203/screen/Vizcal3.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/inorganic2/screen/inorganic2_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/lab_sys/screen/lab_sys.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/spectro/screen/spectro.dart';

import '../../../../../../admaneger/baneer_adds/banner5.dart';
import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../../../../../../admaneger/baneer_adds/banner_adds.dart';

class ItemTherd extends StatelessWidget {
  static const String RoutName = 'ItemTherd';

  const ItemTherd({super.key});

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
                         Get.toNamed(AutomatedAnalysis1.RoutName);
                        },
                        child: const ChioseItem(text: 'تحليل الي 1')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(AutomatedAnalysis2.RoutName);
                        },
                        child: const ChioseItem(text: 'تحليل الي 2')),
                    GestureDetector(
                        onTap: () =>
                            Get.toNamed(LabSys.RoutName),
                        child: const ChioseItem(text: 'لاب سيس')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Spectro.RoutName);
                        },
                        child: const ChioseItem(text: 'سبيكترو')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(LapAutomatedAnalysis.RoutName);
                        },
                        child: const ChioseItem(text: 'لاب تحليل الي')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(InOrganic2.RoutName);
                        },
                        child: const ChioseItem(text: 'غير عضوية 2')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(LapInOrganic.RoutName);
                        },
                        child: const ChioseItem(text: 'لاب ان')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Vizcal2.RoutName);
                        },
                        child: const ChioseItem(text: 'فيزكال 2')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Vizcal3.RoutName);
                        },
                        child: const ChioseItem(text: 'فيزكال 3')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(LapVizcal.RoutName);
                        },
                        child: const ChioseItem(text: 'لاب فيزكال')),
                  ],
                ),
                SizedBox(height: 2.h,),
                BannerAds5()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
