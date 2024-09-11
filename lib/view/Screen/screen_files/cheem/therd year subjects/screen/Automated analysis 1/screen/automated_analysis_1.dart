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
import '../../lab_sys/widget/lab_sys_widget.dart';
import '../widget/automated_analysis_1_widget.dart';

class AutomatedAnalysis1 extends StatefulWidget {
  static const String RoutName = 'AutomatedAnalysis1';

  const AutomatedAnalysis1({super.key});

  @override
  State<AutomatedAnalysis1> createState() => _AutomatedAnalysis1State();
}

class _AutomatedAnalysis1State extends State<AutomatedAnalysis1> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection('تحليل الي 1').snapshots();

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
                          const AutomatedAnalysis1Widget(
                              text1: "تحليل الي 1",
                              text3: "للدكتور امجد pdf",
                              text2: " سلايدات تحليل الي 1",
                              pathName: "سلايدات د امجد "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AutomatedAnalysis1Widget(
                              text1: "تحليل الي 1",
                              text3: "تخليص تحليل الي 1",
                              text2: "دفتر مصطفى ",
                              pathName: "دفتر مصطفى تحليل الي 1"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AutomatedAnalysis1Widget(
                              text1: "تحليل الي 1",
                              text3: "للدكتور ايمن عيسى",
                              text2: " سلايدات تحليل الي 1",
                              pathName: "سلايدات د ايمن عيسى"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AutomatedAnalysis1Widget(
                              text1: "تحليل الي 1",
                              text3: "تحليل الي 1",
                              text2: "شرح أيمن الشيخ",
                              pathName: "شرح ايمن الشيخ "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AutomatedAnalysis1Widget(
                              text1: "تحليل الي 1",
                              text3: "Instrumental Analysis",
                              text2: "كتاب المادة",
                              pathName: "كتاب المادة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AutomatedAnalysis1Widget(
                              text1: "تحليل الي 1",
                              text3: "Instrumental Analysis",
                              text2: "حلول الكتاب",
                              pathName: "مانيوال  سليوشن تحليل الي 1"),
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
                          const AutomatedAnalysis1Widget(
                              text1: "تحليل الي 1",
                              text3: "سكند",
                              text2: "سنوات تحليل الي 1",
                              pathName: "سكند تحليل الي 1"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AutomatedAnalysis1Widget(
                              text1: "تحليل الي 1",
                              text3: "فيرست",
                              text2: "سنوات تحليل الي 1",
                              pathName: "فيرست تحليل الي 1"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AutomatedAnalysis1Widget(
                              text1: "تحليل الي 1",
                              text3: "فاينل",
                              text2: "سنوات تحليل الي 1",
                              pathName: "فاينل تحليل الي 1"),
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
                          const AutomatedAnalysis1Widget(
                              text1: "تحليل الي 1",
                              text3: "للدكتور امجد",
                              text2: "فيديوهات شرح تحليل الي 1 ",
                              pathName: "فيديوهات شرح تحليل الي 1 "),
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
