import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/files_screen/widget/chiose_item.dart';

import '../../../../../admaneger/baneer_adds/banner5.dart';
import '../../filesscreen_3/Abstract algebra 1/screen/abstract_algebra1_screen.dart';
import '../../filesscreen_4/Advance/screen/advance_screen.dart';
import '../../filesscreen_4/Complex analysis/screen/complex_analysis_screen.dart';
import '../../filesscreen_4/Compositions/screen/compositions_screen.dart';
import '../../filesscreen_4/Dali analysis/screen/dali_analysis_screen.dart';
import '../../filesscreen_4/Design and analysis/screen/design_and_analysis_screen.dart';
import '../../filesscreen_4/Dynamic systems/screen/dynamic_systems_screen.dart';
import '../../filesscreen_4/History of mathematics/screen/history_of_mathematics_screen.dart';
import '../../filesscreen_4/Integral equations/screen/Integral_equations_screen.dart';
import '../../filesscreen_4/Mathematical statistics/screen/mathematical_statistics_screen.dart';
import '../../filesscreen_4/Non Euclidean geometry/screen/non_euclidean_geometry_screen.dart';
import '../../filesscreen_4/Numerical Analysis/screen/numerical_analysis_screen.dart';
import '../../filesscreen_4/Preview methods/screen/preview_methods_screen.dart';
import '../../filesscreen_4/Topology 1/screen/topology1_screend.dart';
import '../../filesscreen_4/Topology 2/screen/topology2_screen.dart';

class ItemForthMath extends StatelessWidget {
  static const String RoutName = 'ItemForthMath';

  const ItemForthMath({super.key});


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
                            onTap: (){Get.toNamed(MathematicalStatistics.RoutName);},
                            child: const ChioseItem(text: 'إحصاء رياضي')),
                        GestureDetector(
                            onTap: (){Get.toNamed(Topology1.RoutName);},
                            child: const ChioseItem(text: 'تبولوجيا ١')),
                        GestureDetector(
                            onTap: (){Get.toNamed(Topology2.RoutName);},
                            child: const ChioseItem(text: 'تبولوجيا ٢')),
                        GestureDetector(
                            onTap: (){Get.toNamed(Topology2.RoutName);},
                            child: const ChioseItem(text: 'تحليل عددي')),
                        GestureDetector(
                            onTap: (){Get.toNamed(ComplexAnalysis.RoutName);},
                            child: const ChioseItem(text: 'تحليل مركب')),
                        GestureDetector(
                            onTap: (){Get.toNamed(AbstractAlgebra1.RoutName);},
                            child: const ChioseItem(text: 'جبر مجرد 1')),
                        GestureDetector(
                            onTap: (){Get.toNamed(Compositions.RoutName);},
                            child: const ChioseItem(text: 'تراكيب')),
                        GestureDetector(
                            onTap: (){Get.toNamed(DesignAndAnalysis.RoutName);},
                            child: const ChioseItem(text: 'تصميم وتحليل')),
                        GestureDetector(
                            onTap: (){Get.toNamed(IntegralEquations.RoutName);},
                            child: const ChioseItem(text: 'معادلات تكاملية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(PreviewMethods.RoutName);},
                            child: const ChioseItem(text: 'طرق معاينة')),
                        GestureDetector(
                            onTap: (){Get.toNamed(DaliAnalysis.RoutName);},
                            child: const ChioseItem(text: 'تحليل دالي')),
                        GestureDetector(
                            onTap: (){Get.toNamed(HistoryofMathematics.RoutName);},
                            child: const ChioseItem(text: 'تاريخ رياضيات')),
                        GestureDetector(
                            onTap: (){Get.toNamed(DynamicSystems.RoutName);},
                            child: const ChioseItem(text: 'أنظمة ديناميكية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(NonEuclideanGeometry.RoutName);},
                            child: const ChioseItem(text: 'هندسة لا إقليدية')),
                        GestureDetector(
                            onTap: (){Get.toNamed(Advance.RoutName);},
                            child: const ChioseItem(text: 'ادفانس')),
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
