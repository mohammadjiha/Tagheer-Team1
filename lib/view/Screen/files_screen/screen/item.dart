import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner4.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Bio/screen/bioo.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Calc2/screen/calc2.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Dave/screen/dave.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Physics%201/screen/Physics1.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/Physics%202/screen/Physics2_screen.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/c++/screen/c++.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/chemistry_1/screen/chemistry_screen.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/chemistry_2/screen/chemistry_2screen.dart';

import '../../../../admaneger/baneer_adds/banner5.dart';
import '../../../../admaneger/baneer_adds/banner_adds.dart';
import '../../screen_files/mshtarka_screen/Calc1/Screen/calc.dart';
import '../../screen_files/mshtarka_screen/lap_chem105/screen/lap_chem105.dart';

class Item extends StatelessWidget {
  static const String RoutName = 'Item';

  const Item({super.key});

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
                         Get.toNamed(Dave1.RoutName);
                        },
                        child: const ChioseItem(text: 'ديف')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Calc2.RoutName);
                        },
                        child: const ChioseItem(text: 'كالك 2')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Calc1.RoutName);
                        },
                        child: const ChioseItem(text: 'كالك 1')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(LapChem105.RoutName);
                        },
                        child: const ChioseItem(text: 'لاب كيمياء')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Chemistry2Screen.RoutName);
                        },
                        child: const ChioseItem(text: 'كيمياء 2')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Chemistry1Screen.RoutName);
                        },
                        child: const ChioseItem(text: 'كيمياء 1')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Bio1.RoutName);
                        },
                        child: const ChioseItem(text: 'Bio')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(cc.RoutName);
                        },
                        child: const ChioseItem(text: 'C++')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Physics1.RoutName);
                        },
                        child: const ChioseItem(text: 'Physics 1')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Physics2.RoutName);
                        },
                        child: GestureDetector(
                            onTap: () {
                              Get.toNamed(Physics2.RoutName);
                            },
                            child: const ChioseItem(text: 'Physics 2'))),
                  ],
                ),
                SizedBox(height: 2.h,),
                BannerAds5(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
