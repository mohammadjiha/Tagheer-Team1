import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/real_analysis1_widget.dart';

class RealAnalysis1 extends StatefulWidget {
  static const String RoutName = 'RealAnalysis1';

  const RealAnalysis1({super.key});

  @override
  State<RealAnalysis1> createState() => _RealAnalysis1State();
}

class _RealAnalysis1State extends State<RealAnalysis1> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("تحليل حقيقي 1").snapshots();

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
                              const RealAnalysis1Widget(
                                  text1: 'تحليل حقيقي 1',
                                  text3: 'INTRODUCTION TO REAL ANALYSIS',
                                  text2: 'كتاب المادة',
                                  pathName: 'INTRODUCTION TO REAL ANALYSIS كتاب'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const RealAnalysis1Widget(
                                  text1: 'تحليل حقيقي 1',
                                  text3: 'CCOMPANY  INTRODUCTION...',
                                  text2: 'INSTRUCTOR’S MANUAL',
                                  pathName: 'INSTRUCTOR’S MANUAL TO ACCOMPANY  INTRODUCTION TO REAL  ANALYSIS'),
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
                              const RealAnalysis1Widget(
                                  text1: 'تحليل حقيقي 1',
                                  text3: 'للدكتور فراس',
                                  text2: 'سنوات وجاهي',
                                  pathName: 'امتحانات د فراس'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const RealAnalysis1Widget(
                                  text1: 'تحليل حقيقي 1',
                                  text3: '',
                                  text2: 'سنوات الكتروني',
                                  pathName: 'سنوات الكتروني '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const RealAnalysis1Widget(
                                  text1: 'تحليل حقيقي 1',
                                  text3: '',
                                  text2: 'سنوات وجاهي',
                                  pathName: 'سنوات وجاهي '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const RealAnalysis1Widget(
                                  text1: 'تحليل حقيقي 1',
                                  text3: 'للدكتور حامد',
                                  text2: 'سنوات وجاهي',
                                  pathName: 'سنوات وجاهي د حامد'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const RealAnalysis1Widget(
                                  text1: 'تحليل حقيقي 1',
                                  text3: 'للدكتور سعود',
                                  text2: 'سنوات وجاهي',
                                  pathName: 'سنوات وجاهي د سعود'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const RealAnalysis1Widget(
                                  text1: 'تحليل حقيقي 1',
                                  text3: 'للدكتور لبنى',
                                  text2: 'سنوات وجاهي',
                                  pathName: 'سنوات وجاهي د لبنى'),
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
                              const RealAnalysis1Widget(
                                  text1: 'تحليل حقيقي 1',
                                  text3: 'لا يوجد',
                                  text2: 'لا يوجد',
                                  pathName: 'سنوات وجاهي د لبنى'),
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
