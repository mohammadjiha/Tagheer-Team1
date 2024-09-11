import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner5.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Lap_Organac/screen/lap_organac.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Organic%202/screen/screen.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Organic/screen/organic.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Vizcal1/screen/vizcal1.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/analytical/screen/analytical.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/inorganic1/screen/inorganic1.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/lap_analytical/screen/lap_analytical.dart';

import '../../../../../../admaneger/baneer_adds/banner_adds.dart';

class ItemSecond extends StatelessWidget {
  static const String RoutName = 'ItemSecond';

  const ItemSecond({super.key});

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
                         Get.toNamed(Analytical.RoutName);
                        },
                        child: const ChioseItem(text: 'تحليلية')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(LapAnalytical.RoutName);
                        },
                        child: const ChioseItem(text: 'لاب تحليلية')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(LapOrganc.RoutName);
                        },
                        child: const ChioseItem(text: 'لاب عضوية')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(InOrganic1.RoutName);
                        },
                        child: const ChioseItem(text: 'غير عضوية 1')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Organic1.RoutName);
                        },
                        child: const ChioseItem(text: 'عضوية1')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Organic2.RoutName);
                        },
                        child: const ChioseItem(text: 'عضوية2')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Vizcal1.RoutName);
                        },
                        child: const ChioseItem(text: 'فيزكال 1')),
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
