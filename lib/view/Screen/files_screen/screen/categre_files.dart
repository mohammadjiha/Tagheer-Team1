import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Student_plan/Widget/chioc_studaint.dart';
import 'package:tageer/view/Screen/files_screen/screen/item.dart';
import 'package:tageer/view/Screen/screen_files/cheem/Fourth%20year%20students/Item_fourth.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/widget/itme_second.dart';
import 'package:tageer/view/Screen/screen_files/cheem/therd%20year%20subjects/screen/item_therd.dart';

import '../../../../admaneger/baneer_adds/banner_adds.dart';


class CategoryFiles extends StatelessWidget {
  static const String RoutName = 'CategoryFiles';

  const CategoryFiles({super.key});

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
                const Spacer(
                  flex: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Item.RoutName);
                  },
                  child: const ChiocStudent(
                      images: 'assets/image/icons8-student-64 1.png',
                      Text11: 'طالب سنة اولى',
                      Text12: 'هذه المواد ينصح لطلاب السنة الأولى دراستها'),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(ItemSecond.RoutName);
                  },
                  child: const ChiocStudent(
                      images: 'assets/image/icons8-student-64 1.png',
                      Text11: 'طالب سنة ثانية',
                      Text12: 'هذه المواد ينصح لطلاب السنة الثانية دراستها'),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () =>
                      Get.toNamed(ItemTherd.RoutName),
                  child: const ChiocStudent(
                      images: 'assets/image/icons8-student-64 1.png',
                      Text11: 'طالب سنة ثالثة',
                      Text12: 'هذه المواد ينصح لطلاب السنة الثالثة دراستها'),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {
                   Get.toNamed(ItemFourth.RoutName);
                  },
                  child: const ChiocStudent(
                      images: 'assets/image/icons8-student-64 1.png',
                      Text11: 'طالب سنة رابعة',
                      Text12: 'هذه المواد ينصح لطلاب السنة الرابعة دراستها'),
                ),
                const Spacer(
                  flex: 15,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
