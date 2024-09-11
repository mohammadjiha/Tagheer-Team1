import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';

import '../../../../../admaneger/baneer_adds/banner5.dart';
import '../../filesscreen_2/Anatomy of a plantt/screen/Anatomy_of_a_plantt.dart';
import '../../filesscreen_2/Basics of botany/screen/Basics_of_botany.dart';
import '../../filesscreen_2/Biochemistry/screen/Biochemistry.dart';
import '../../filesscreen_2/Cell biology/screen/Cell_biology.dart';
import '../../filesscreen_2/General microbiology/screen/General_microbiology.dart';
import '../../filesscreen_2/Invertebrates/screen/Invertebrates.dart';
import '../../filesscreen_2/Practical life sciences 2/screen/Practical_life_sciences2.dart';
import '../../filesscreen_2/Vertebrates/screen/Vertebrates.dart';


class ItemSecondbio extends StatelessWidget {
  static const String RoutName = 'ItemSecondbio';
  const ItemSecondbio({super.key});

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
                            onTap: (){Get.toNamed(Biochemistry.RoutName);},
                            child: const ChioseItem(text: 'كيمياء حيوية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(GeneralMicrobiology.RoutName);},
                            child: const ChioseItem(text: 'أحياء دقيقة عامة')),
                        GestureDetector(
                            onTap: (){Get.toNamed(AnatomyOfAplantt.RoutName);},
                            child: const ChioseItem(text: 'تشريح نبات')),
                        GestureDetector(
                            onTap: (){Get.toNamed(Invertebrates.RoutName);},
                            child: const ChioseItem(text: 'لا فقاريات')),
                        GestureDetector(
                            onTap: (){Get.toNamed(Vertebrates.RoutName);},
                            child: const ChioseItem(text: 'فقاريات')),
                        GestureDetector(
                            onTap: (){Get.toNamed(CellBiology.RoutName);},
                            child: const ChioseItem(text: 'بيولوجيا الخلية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(BasicsOfBotany.RoutName);},
                            child: const ChioseItem(text: 'أساسيات علم نبات')),
                        GestureDetector(
                            onTap: (){Get.toNamed(PracticalLifeSciences2.RoutName);},
                            child: const ChioseItem(text: 'علوم حياة عامة 2')),
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
