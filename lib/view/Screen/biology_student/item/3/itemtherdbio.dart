import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/biology_student/filesscreen_3/Medicinal%20plants/screen/Medicinal_plants.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';

import '../../../../../admaneger/baneer_adds/banner5.dart';
import '../../filesscreen_3/Animal physiology/screen/Animal_physiology.dart';
import '../../filesscreen_3/Applied structural biology/screen/Applied_structural_biology.dart';
import '../../filesscreen_3/Biotechnology/screen/Biotechnology.dart';
import '../../filesscreen_3/DNA techniques/screen/DNA_techniques.dart';
import '../../filesscreen_3/Gene expression/screen/Gene_expression.dart';
import '../../filesscreen_3/Material separation techniques/screen/Material_separation_techniques.dart';
import '../../filesscreen_3/Plant biology/screen/Plant_biology.dart';
import '../../filesscreen_3/Plant biotechnology/screen/Plant_biotechnology.dart';
import '../../filesscreen_3/Plant physiology/screen/Plant_physiology.dart';
import '../../filesscreen_3/Vibrant environment/screen/Vibrant_environment.dart';


class Itemtherdbio extends StatelessWidget {
  static const String RoutName = 'Itemtherdbio';
  const Itemtherdbio({super.key});

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
                      children:  [
                        GestureDetector(
                            onTap: (){Get.toNamed(PlantPhysiology.RoutName);},
                            child: const ChioseItem(text: 'فسيولوجيا النبات')),
                        GestureDetector(
                            onTap: (){},
                            child: const ChioseItem(text: 'بيولوجيا نبات')),
                        GestureDetector(
                            onTap: (){Get.toNamed(MedicinalPlants.RoutName);},
                            child: const ChioseItem(text: 'نباتات طبية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(AnimalPhysiology.RoutName);},
                            child: const ChioseItem(text: 'فسيولوجيا الحيوان')),
                        GestureDetector(
                            onTap: (){},
                            child: const ChioseItem(text: 'بيولوجيا تكوينية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(VibrantEnvironment.RoutName);},
                            child: const ChioseItem(text: 'بيئة حيوية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(Biotechnology.RoutName);},
                            child: const ChioseItem(text: 'تقنيات حيوية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(DnaTechniques.RoutName);},
                            child: const ChioseItem(text: 'بيولوجيا جزيئية عملية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(AppliedStructuralBiology.RoutName);},
                            child: const ChioseItem(text: 'بيولوجيا جزيئية ')),
                        GestureDetector(
                            onTap: (){Get.toNamed(Biotechnology.RoutName);},
                            child: const ChioseItem(text: 'تقنيات الحمض النووي')),
                        GestureDetector(
                            onTap: (){Get.toNamed(MaterialSeparationTechniques.RoutName);},
                            child: const ChioseItem(text: 'تقنيات فصل المواد')),
                        GestureDetector(
                            onTap: (){Get.toNamed(GeneExpression.RoutName);},
                            child: const ChioseItem(text: 'تعبير جيني')),
                        GestureDetector(
                            onTap: (){Get.toNamed(PlantBiotechnology.RoutName);},
                            child: const ChioseItem(text: 'تقانات حيوية نباتية')),


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
