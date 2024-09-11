import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner5.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/Chemistry_alnawatij/Screen/alnawatij_Screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/InOrganic3/Screen/inorganic3.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/Organic3/screen/organic3_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/Polymer/Screen/polymer_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/Special%20analytical/Screen/special_analytical_screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Screen/sbishil%20eudwia/screen/sbishil_eudwia_screen.dart';

import '../../../../../admaneger/baneer_adds/banner_adds.dart';
import 'Screen/Environmental analysis/Screen/environmental_analysis_screen.dart';

import 'Screen/Hetero/Screen/hetero_screen.dart';
import 'Screen/industrial_analyses/screen/industrial_analyses_screen.dart';
import 'Screen/organometallic/screen/organometallic_screen.dart';

class ItemFourth extends StatelessWidget {
  static const String RoutName = 'ItemFourth';

  const ItemFourth({super.key});

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
                         Get.toNamed(EnviromentalAnalysis.RoutName);
                        },
                        child: const ChioseItem(text: 'تحليلية بيئية')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(IndustrialAnalyses.RoutName);
                        },
                        child: const ChioseItem(text: 'تحاليل صناعية')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(InOrganic3.RoutName);
                        },
                        child: const ChioseItem(text: 'غير عضوية 3')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Organic3.RoutName);
                        },
                        child: const ChioseItem(text: 'عضوية 3')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Polymer.RoutName);
                        },
                        child: const ChioseItem(text: 'بوليمر')),
                    InkWell(
                        onTap: () {
                          Get.toNamed(Organometallic.RoutName);
                        },
                        child: const ChioseItem(text: 'غير عضوية فلزية')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Hetero.RoutName);
                        },
                        child: const ChioseItem(text: 'هيترو')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(SbishilEudwia.RoutName);
                        },
                        child: const ChioseItem(text: 'سبيشال عضوية')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Alnawatij.RoutName);
                        },
                        child: const ChioseItem(text: 'النواتج')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(SpecialAnalytical.RoutName);
                        },
                        child: const ChioseItem(text: 'سبيشال تحليلية')),
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
