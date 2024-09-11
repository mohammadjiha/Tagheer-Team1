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
import '../widget/industrial_analyses+widget.dart';

class IndustrialAnalyses extends StatefulWidget {
  static const String RoutName = 'IndustrialAnalyses';

  const IndustrialAnalyses({super.key});

  @override
  State<IndustrialAnalyses> createState() => _IndustrialAnalysesState();
}

class _IndustrialAnalysesState extends State<IndustrialAnalyses> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("تحاليل صناعية").snapshots();

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
                          const IndustrialAnalysesWidget(
                              text1: " تحاليل صناعية",
                              text3: "للدكتور ايمن",
                              text2: "سلايدات تحاليل صناعية",
                              pathName: "تحاليل صناعية مادة د ايمن"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const IndustrialAnalysesWidget(
                              text1: " تحاليل صناعية",
                              text3: "للدكتور ايمن (جديد)",
                              text2: "سلايدات تحاليل صناعية",
                              pathName: "تحاليل صناعيةد ايمن سلايدات"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const IndustrialAnalysesWidget(
                              text1: " تحاليل صناعية",
                              text3: "للطالبة مريم",
                              text2: "تلخيص تحاليل صناعية",
                              pathName: "تلخيص مريم تحاليل صناعية "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const IndustrialAnalysesWidget(
                              text1: " تحاليل صناعية",
                              text3: "تحاليل صناعية",
                              text2: "تلخيص الاختصارات",
                              pathName: "تلخيص الاختصارات"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const IndustrialAnalysesWidget(
                              text1: " تحاليل صناعية",
                              text3: "للطالب إبراهيم العوضي",
                              text2: "تلخيص فاينل تحاليل صناعية",
                              pathName: "تلخيص فاينل ابراهيم ابعوضب"),
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
                          const IndustrialAnalysesWidget(
                              text1: " تحاليل صناعية",
                              text3: "ميد",
                              text2: "سنوات تحاليل صناعية",
                              pathName: "سنوات ميد تحاليل "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const IndustrialAnalysesWidget(
                              text1: " تحاليل صناعية",
                              text3: "فاينل",
                              text2: "سنوات تحاليل صناعية",
                              pathName: "فاينل"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const IndustrialAnalysesWidget(
                              text1: " تحاليل صناعية",
                              text3: "شاملة",
                              text2: "سنوات تحاليل صناعية",
                              pathName: "سنوات تحاليل "),
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
                          const IndustrialAnalysesWidget(
                              text1: " تحاليل صناعية",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName: "تحاليل صناعيةد ايمن سلايدات"),
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
