import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';

import '../../../../../admaneger/baneer_adds/banner5.dart';
import '../../filesscreen_3/Abstract algebra 1/screen/abstract_algebra1_screen.dart';
import '../../filesscreen_3/Linear programming/screen/linear_programming_screen.dart';
import '../../filesscreen_3/Number theory/screen/number_theory_screen.dart';
import '../../filesscreen_3/Partial differential equations/screen/partial_differential_equations_screen.dart';
import '../../filesscreen_3/Real analysis 2/screen/real_analysis2_screen.dart';
import '../../filesscreen_3/Statement theory/screen/statement_theory_screen.dart';
import '../../filesscreen_3/Statistical methods/screen/statistical_methods_screen.dart';

class ItemtheredMath extends StatelessWidget {
  static const String RoutName = 'ItemtheredMath';

  const ItemtheredMath({super.key});


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
                            onTap: (){Get.toNamed(PartialDifferentialEquations.RoutName);},
                            child: const ChioseItem(text: 'معادلات تفاضلية جزئية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(LinearProgramming.RoutName);},
                            child: const ChioseItem(text: 'برمجة خطية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(StatisticalMethods.RoutName);},
                            child: const ChioseItem(text: 'الطرق الاحصائية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(RealAnalysis2.RoutName);},
                            child: const ChioseItem(text: 'تحليل حقيقي 2')),
                        GestureDetector(
                            onTap: (){Get.toNamed(AbstractAlgebra1.RoutName);},
                            child: const ChioseItem(text: 'جبر مجرد 1')),
                        GestureDetector(
                            onTap: (){Get.toNamed(NumberTheory.RoutName);},
                            child: const ChioseItem(text: 'نظرية الاعداد')),
                        GestureDetector(
                            onTap: (){Get.toNamed(StatementTheory.RoutName);},
                            child: const ChioseItem(text: 'نظرية البيان')),
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
