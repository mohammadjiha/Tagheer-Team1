import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Student_plan/Widget/chioc_studaint.dart';
import 'package:tageer/view/Screen/biology_student/item/2/itemsecondbio.dart';
import 'package:tageer/view/Screen/biology_student/item/3/itemtherdbio.dart';
import 'package:tageer/view/Screen/biology_student/item/4/itemforthbio.dart';

import '../../files_screen/screen/item.dart';

class CategoryFilesBio extends StatelessWidget {
  static const String RoutName = 'CategoryFilesBio';

  const CategoryFilesBio({super.key});

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
                        Get.toNamed(ItemSecondbio.RoutName);
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
                      onTap: () {
                        Get.toNamed(Itemtherdbio.RoutName);
                      },
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
                        Get.toNamed(Itemforthbio.RoutName);
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
