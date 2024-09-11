import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner5.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/Computation%20Physics/Screen/computation_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/Electronics/screen/electronics_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/LapPhsiscs/screen/lapphisisc.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/Math%201/screen/math1_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_2/Modern%201/Screen/modern1_screen.dart';

import '../../filesScreen_2/Math 2/Screen/math2_screen.dart';
import '../../filesScreen_2/Modern 2/Screen/modern2_screen.dart';

class ItemSecondPhysisc extends StatelessWidget {
  static const String RoutName = 'ItemSecondPhysisc';

  const ItemSecondPhysisc({super.key});

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
                          Get.toNamed(LapPhsiscs3.RoutName);
                        },
                        child: const ChioseItem(text: 'Lab Physics 3')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Electronics.RoutName);
                        },
                        child: const ChioseItem(text: 'Electronics')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Math1.RoutName);
                        },
                        child: const ChioseItem(text: 'Math 1')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Math2.RoutName);
                        },
                        child: const ChioseItem(text: 'Math 2')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Computation.RoutName);
                        },
                        child: const ChioseItem(text: 'Computation')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Modern1.RoutName);
                        },
                        child: const ChioseItem(text: 'Modern 1')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Modern2.RoutName);
                        },
                        child: const ChioseItem(text: 'Modern 2')),
                    const ChioseItem(text: 'Physics 3')
                  ],
                ),
                SizedBox(height: 1.h,),
                BannerAds5(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
