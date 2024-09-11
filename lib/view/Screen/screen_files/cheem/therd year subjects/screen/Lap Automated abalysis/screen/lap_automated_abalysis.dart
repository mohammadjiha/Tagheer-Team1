import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/lap_automated_abalysis_widget.dart';

class LapAutomatedAnalysis extends StatefulWidget {
  static const String RoutName = 'LapAutomatedAnalysis';

  const LapAutomatedAnalysis({super.key});

  @override
  State<LapAutomatedAnalysis> createState() => _LapAutomatedAnalysisState();
}

class _LapAutomatedAnalysisState extends State<LapAutomatedAnalysis> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("لاب تحليل الي").snapshots();

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
                          const LapAutomatedAnalysisWidget(
                              text1: "لاب تحليل الي",
                              text3: "للطالبة اية مصطفى",
                              text2: "تلخيص ميد لاب تحليل الي",
                              pathName: "تلخيص امنة نضري "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapAutomatedAnalysisWidget(
                              text1: "لاب تحليل الي",
                              text3: "للطالبة حنين زيادة",
                              text2: "تلخيص لاب تحليل الي",
                              pathName:
                                  "تلخيص فاينل تحليل الي للاب حنين زيادة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapAutomatedAnalysisWidget(
                              text1: "لاب تحليل الي",
                              text3: "للطالبة هبة عبد الفتاح",
                              text2: "ريبورتات لاب تحليل الي",
                              pathName: "ريبورتات لاب تحليل الي "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapAutomatedAnalysisWidget(
                              text1: "لاب تحليل الي",
                              text3: "",
                              text2: " شرح تجارب لاب تحليل الي",
                              pathName: "شرح تجارب لاب تحليل"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapAutomatedAnalysisWidget(
                              text1: "لاب تحليل الي",
                              text3: "للطالبة هبة المنفلوطي",
                              text2: "شرح تجارب الفاينل + Exp 1 7 8",
                              pathName: "شرح هبة المنفلوطي فاينب و 1و 7ز 8"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapAutomatedAnalysisWidget(
                              text1: "لاب تحليل الي",
                              text3: "لاب تحليل الي ",
                              text2: "مانيوال",
                              pathName: "مانيوال لاب تحليل "),
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
                          const LapAutomatedAnalysisWidget(
                              text1: "لاب تحليل الي",
                              text3: "لاب تحليل الي ",
                              text2: "نماذج اسئلة سنوات",
                              pathName: "نماذج امتحانات لا تحليل "),
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
                          const LapAutomatedAnalysisWidget(
                              text1: "لاب تحليل الي",
                              text3: "لاب تحليل الي ",
                              text2: "فيديوهات شرح",
                              pathName: "فيديوهات لاب تحليل الي"),
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
