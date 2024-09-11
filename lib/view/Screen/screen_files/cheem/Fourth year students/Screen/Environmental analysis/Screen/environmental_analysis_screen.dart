import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Lap_Organac/widget/lap_organc_widget.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/analytical/widget/analytical_widget.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/lap_analytical/widget/lap_analytical_widget.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/c++/widget/c++widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../../../admaneger/baneer_adds/banner6.dart';
import '../Widget/environmental_analysis_widget.dart';

class EnviromentalAnalysis extends StatefulWidget {
  static const String RoutName = 'EnviromentalAnalysis';

  const EnviromentalAnalysis({super.key});

  @override
  State<EnviromentalAnalysis> createState() => _EnviromentalAnalysisState();
}

class _EnviromentalAnalysisState extends State<EnviromentalAnalysis> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("تحليلية بيئية").snapshots();

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
              child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                color: color.backgraound_Home,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    BannerAds6(),
                    SizedBox(
                      height: 3.h,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        ': ملفات المواد',
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: 2.w,
                          ),
                          const EnviromentalAnalysisWidget(
                              text1: "تحليلية بيئية",
                              text3: "للدكتور جعفر",
                              text2: "سلايدات تحليلية بيئية",
                              pathName: "سلايدات بيئية د جعفر"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const EnviromentalAnalysisWidget(
                              text1: "تحليلية بيئية",
                              text3: "للدكتور جعفر",
                              text2: "شرح تحليلية بيئية",
                              pathName: "انفايرو جعفر"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const EnviromentalAnalysisWidget(
                              text1: "تحليلية بيئية",
                              text3: "للطالبة شروق عوض",
                              text2: "دفتر شرح تحليلة بيئية",
                              pathName: "دفتر شروق عوض"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const EnviromentalAnalysisWidget(
                              text1: "تحليلية بيئية",
                              text3: "فاينل",
                              text2: "دفتر شرح تحليلية بيئية ",
                              pathName: "دفتر فاينال انفايرو"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const EnviromentalAnalysisWidget(
                              text1: "تحليلية بيئية",
                              text3: "فاينل",
                              text2: "شرح تحليلية بيئية",
                              pathName: "انفايرو فاينل"),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        ': اسئلة سنوات',
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: 2.w,
                          ),
                          const EnviromentalAnalysisWidget(
                              text1: "تحليلية بيئية",
                              text3: "فيرست",
                              text2: "سنوات تحليلية بيئية",
                              pathName: "سنوات فيرست لنفايرو"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const EnviromentalAnalysisWidget(
                              text1: "تحليلية بيئية",
                              text3: "سكند",
                              text2: "سنوات تحليلية بيئية",
                              pathName: "سنوات سكند"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const EnviromentalAnalysisWidget(
                              text1: "تحليلية بيئية",
                              text3: "ميد + الحل",
                              text2: "سنوات تحليلية بيئية",
                              pathName: "سنوات ميد محلول "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const EnviromentalAnalysisWidget(
                              text1: "تحليلية بيئية",
                              text3: "شاملة المادة كاملة",
                              text2: "سنوات تحليلية بيئية",
                              pathName: "سنوات "),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        ': شروحات للمادة',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: 2.w,
                          ),
                          const EnviromentalAnalysisWidget(
                              text1: "تحليلية بيئية",
                              text3: "تحليلية بيئية",
                              text2: "فيديوهات شرح ",
                              pathName: "فيديوهات شرح انفايرو"),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
