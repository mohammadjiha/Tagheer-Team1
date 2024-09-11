import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/KAHRO%201/Screen/KAHRO1_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/Lab%20Advance%201/Screen/labadvance1_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/Medical/Screen/Medical_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/Quantum%201/Screen/Quantum1_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_3/Thermo/Screen/Thermo_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Astronomy/Screen/Astronomy_Screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Classical/Screen/Classical_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Lab%20Advance%202/Screen/LabAdvance2_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Lab%20applications/Screen/Labapplications_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Laser/Screen/Laser_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Materia/Screen/Materia_Screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Nano/Screen/Nano_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Optics/Screen/Optics_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Radiation/Screen/Radiation_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Relativity/Screen/Relativity_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Semi-Cond/Screen/Semi-Cond_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/Solid/Screen/Solid_screen.dart';
import 'package:tageer/view/Screen/physics_Student/filesScreen_4/dhuriya/Screen/dhuriya_screen.dart';

import '../../../../../admaneger/baneer_adds/banner5.dart';
import '../../filesScreen_3/KAHRO 2/Screen/KAHRO2_screen.dart';
import '../../filesScreen_3/Quantum 2/Screen/Quantum2_screen.dart';

class ItemFoarthPhysisc extends StatelessWidget {
  static const String RoutName = 'ItemFoarthPhysisc';

  const ItemFoarthPhysisc({super.key});

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
                          Get.toNamed(Laser.RoutName);
                        },
                        child: const ChioseItem(text: 'Laser')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Solid.RoutName);
                        },
                        child: const ChioseItem(text: 'Solid')),
                    GestureDetector(
                        onTap: () {
                        Get.toNamed(LabAdvance2.RoutName);
                        },
                        child: const ChioseItem(text: 'Lab Advance 2')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Radiation.RoutName);
                        },
                        child: const ChioseItem(text: 'Radiation')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Medical.RoutName);
                        },
                        child: const ChioseItem(text: 'Medical')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Relativity.RoutName);
                        },
                        child: const ChioseItem(text: 'Relativity')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(SemiCond.RoutName);
                        },
                        child: const ChioseItem(text: 'Semi-Cond')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Nano.RoutName);
                        },
                        child: const ChioseItem(text: 'Nano')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(Optics.RoutName);
                        },
                        child: const ChioseItem(text: 'Optics')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Labapplications.RoutName);
                        },
                        child: const ChioseItem(text: 'لاب تطبيقات')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Materia.RoutName);
                        },
                        child: const ChioseItem(text: 'ماتيريا ')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Classical.RoutName);
                        },
                        child: const ChioseItem(text: 'Classical')),
                    GestureDetector(
                        onTap: () {
                         Get.toNamed(dhuriya.RoutName);
                        },
                        child: const ChioseItem(text: 'ذرية')),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Astronomy.RoutName);
                        },
                        child: const ChioseItem(text: 'Astronomy')),
                    const ChioseItem(text: 'احصائية'),
                    const ChioseItem(text: 'لاب الكترونيات'),
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
