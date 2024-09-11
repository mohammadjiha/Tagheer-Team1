import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/Calc%203/Widget/calc3_widget.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/mathematical_statistics_widget.dart';

class MathematicalStatistics extends StatefulWidget {
  static const String RoutName = 'MathematicalStatistics';

  const MathematicalStatistics({super.key});

  @override
  State<MathematicalStatistics> createState() => _MathematicalStatisticsState();
}

class _MathematicalStatisticsState extends State<MathematicalStatistics> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("إحصاء رياضي").snapshots();

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
                        SizedBox(height: 1.h,),
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
                              const MathematicalStatisticsWidget(
                                  text1: 'إحصاء رياضي',
                                  text3: 'with Applications',
                                  text2: 'Mathematical Statistics',
                                  pathName: 'كتاب المادة'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const MathematicalStatisticsWidget(
                                  text1: 'إحصاء رياضي',
                                  text3: 'AND MATHEMATICAL STATISTICS',
                                  text2: 'NTRODUCTION TO PROBABILITY',
                                  pathName: 'INTRODUCTION TO PROBABILITY AND MATHEMATICAL STATISTICS '),
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
                              const MathematicalStatisticsWidget(
                                  text1: 'إحصاء رياضي',
                                  text3: 'الكتروني',
                                  text2: 'سنوات إحصاء رياضي',
                                  pathName: 'سنوات االكتروني '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const MathematicalStatisticsWidget(
                                  text1: 'إحصاء رياضي',
                                  text3: 'وجاهي',
                                  text2: 'سنوات إحصاء رياضي',
                                  pathName: 'سنوات وجاهي '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const MathematicalStatisticsWidget(
                                  text1: 'إحصاء رياضي',
                                  text3: 'للدكتور مصطفى',
                                  text2: 'سنوات إحصاء رياضي',
                                  pathName: 'سنوات د مصطفى'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const MathematicalStatisticsWidget(
                                  text1: 'إحصاء رياضي',
                                  text3: 'للدكتور حلمي',
                                  text2: 'سنوات إحصاء رياضي',
                                  pathName: 'سنوات د حلمي'),
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
                              const MathematicalStatisticsWidget(
                                  text1: 'إحصاء رياضي',
                                  text3: 'ا يوجد',
                                  text2: 'ا يوجد',
                                  pathName: 'كتاب المادة'),
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
