import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Student_plan/Widget/chioc_studaint.dart';
import 'package:tageer/view/Screen/biology_student/screen/category_files_bio.dart';
import 'package:tageer/view/Screen/files_screen/screen/categre_files.dart';
import 'package:tageer/view/Screen/mathematucs_student/screen/categoryfilesmath.dart';
import 'package:tageer/view/Screen/physics_Student/Screen/categoryfilesphysisc.dart';
import '../../../../admaneger/baneer_adds/banner4.dart';
import '../../../../admaneger/baneer_adds/banner_adds.dart';
import '../../Home/Screen/home_screen.dart';

class ChooseSpecialty extends StatelessWidget {
  static const String RoutName = 'ChooseSpecialty';

  const ChooseSpecialty({super.key});

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
                  'اختر التخصص',
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
                  height: 4.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    children: [
                      BannerAds4(),
                      SizedBox(
                        height: 2.h,
                      ),
                      GestureDetector(
                        onTap: () {
                         Get.toNamed(CategoryFiles.RoutName);
                        },
                        child: const ChiocStudent(
                          images: 'assets/image/image-removebg-preview (2).png',
                          Text11: 'قسم الكيمياء',
                          Text12: 'ملفات/سنوات/شروحات/فيديوهات',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(CategoryFilesPhysisc.RoutName);
                        },
                        child: const ChiocStudent(
                          images: 'assets/image/image-removebg-preview (1).png',
                          Text11: 'قسم الفيزياء',
                          Text12: 'ملفات/سنوات/شروحات/فيديوهات',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GestureDetector(
                        onTap: () {Get.toNamed(CategoryFilesMath.RoutName);},
                        child: const ChiocStudent(
                          images: 'assets/image/image-removebg-preview.png',
                          Text11: 'قسم الرياضيات',
                          Text12: 'ملفات/سنوات/شروحات/فيديوهات',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(CategoryFilesBio.RoutName);
                        },
                        child: const ChiocStudent(
                          images: 'assets/image/image-removebg-preview (3).png',
                          Text11: 'قسم الأحياء',
                          Text12: 'ملفات/سنوات/شروحات/فيديوهات',
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
