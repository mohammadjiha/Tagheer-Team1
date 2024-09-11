import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner6.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Lap_Organac/widget/lap_organc_widget.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/analytical/widget/analytical_widget.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/lap_analytical/widget/lap_analytical_widget.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/c++/widget/c++widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Analytical extends StatefulWidget {
  static const String RoutName = 'Analytical';

  const Analytical({super.key});

  @override
  State<Analytical> createState() => _AnalyticalState();
}

class _AnalyticalState extends State<Analytical> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection('Analytical').snapshots();

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
                          const AnalyticalWidget(
                              text1: "تحليلية",
                              text3: "شرح تحليلية",
                              text2: "دوسية عبادة",
                              pathName: "دوسية عبادة شرح تحليلية"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AnalyticalWidget(
                              text1: "تحليلية",
                              text3: "عمر جبر حلوة",
                              text2: "شرح مفتاح الابداع تحليلية",
                              pathName: "مفتاح الابداع شرح كيمياء تحليلية "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AnalyticalWidget(
                              text1: "تحليلية",
                              text3: "تحليلية",
                              text2: "كتاب المادة",
                              pathName: "كتاب الكيمياء التحليلية"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AnalyticalWidget(
                              text1: "تحليلية",
                              text3: "د.اسماعيل الفسفوس",
                              text2: "سلايدات",
                              pathName: "سلايدات اسامعيل الفسفوس ك كاملة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AnalyticalWidget(
                              text1: "تحليلية",
                              text3: "",
                              text2: "تلخيص تحليلية",
                              pathName: "تلخيص تحليلية "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AnalyticalWidget(
                              text1: "تحليلية",
                              text3: "فيرست",
                              text2: "تلخيص انوداين اكاديمي",
                              pathName: "تلخيص انوداين اكاديمي فيرست"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AnalyticalWidget(
                              text1: "تحليلية",
                              text3: "سكند",
                              text2: "تلخيص انوداين اكاديمي",
                              pathName: "تلخيص انوداين اكاديمي سكند"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const AnalyticalWidget(
                              text1: "تحليلية",
                              text3: "فاينل",
                              text2: "تلخيص انوداين اكاديمي",
                              pathName: "تلخيص انوداين اكاديمي فاينل"),
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
                          const AnalyticalWidget(
                              text1: "تحليلية",
                              text3: "تحليلية",
                              text2: "سنوات",
                              pathName: "سنوات واسئلة تحليلية "),
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
                          const AnalyticalWidget(
                              text1: "تحليلية",
                              text3: "تحليلية",
                              text2: "فيديوهات شرح",
                              pathName: "فيديوهات"),
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
