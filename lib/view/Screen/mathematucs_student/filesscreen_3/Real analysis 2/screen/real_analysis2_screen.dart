import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/Calc%203/Widget/calc3_widget.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/real_analysis2_widget.dart';

class RealAnalysis2 extends StatefulWidget {
  static const String RoutName = 'RealAnalysis2';

  const RealAnalysis2({super.key});

  @override
  State<RealAnalysis2> createState() => _RealAnalysis2State();
}

class _RealAnalysis2State extends State<RealAnalysis2> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("تحليل حقيقي 2").snapshots();

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
                              const RealAnalysis2Widget(
                                  text1: 'تحليل حقيقي 2',
                                  text3: 'INTRODUCTION TO ',
                                  text2: 'REAL  ANALYSIS',
                                  pathName: 'INSTRUCTOR’S MANUAL TO ACCOMPANY  INTRODUCTION TO REAL  ANALYSIS'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const RealAnalysis2Widget(
                                  text1: 'تحليل حقيقي 2',
                                  text3: 'Fourth Edition',
                                  text2: 'INTRODUCTION TO REAL ANALYSIS',
                                  pathName: 'INTRODUCTION TO REAL ANALYSIS Fourth Edition'),
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
                              const RealAnalysis2Widget(
                                  text1: 'تحليل حقيقي 2',
                                  text3: 'فيرست وجاهي',
                                  text2: 'سنوات تحليل حقيقي 2',
                                  pathName: 'فيرست2 وجاهي '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const RealAnalysis2Widget(
                                  text1: 'تحليل حقيقي 2',
                                  text3: 'فيرست وجاهي',
                                  text2: 'سنوات تحليل حقيقي 2',
                                  pathName: 'فيرست وجاهي '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const RealAnalysis2Widget(
                                  text1: 'تحليل حقيقي 2',
                                  text3: 'سكند وجاهي',
                                  text2: 'سنوات تحليل حقيقي 2',
                                  pathName: 'سكند وجاهي '),
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
                              const RealAnalysis2Widget(
                                  text1: 'تحليل حقيقي 2',
                                  text3: 'لا يوجد',
                                  text2: 'لا يوجد',
                                  pathName: 'INSTRUCTOR’S MANUAL TO ACCOMPANY  INTRODUCTION TO REAL  ANALYSIS'),
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
