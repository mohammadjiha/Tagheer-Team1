import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/abstract_algebra1_widget.dart';

class AbstractAlgebra1 extends StatefulWidget {
  static const String RoutName = 'AbstractAlgebra1';

  const AbstractAlgebra1({super.key});

  @override
  State<AbstractAlgebra1> createState() => _AbstractAlgebra1State();
}

class _AbstractAlgebra1State extends State<AbstractAlgebra1> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("جبر مجرد 1").snapshots();

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
                              const AbstractAlgebra1Widget(
                                  text1: 'جبر مجرد 1',
                                  text3: '',
                                  text2: 'كتاب المادة',
                                  pathName: 'كتاب المادة '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const AbstractAlgebra1Widget(
                                  text1: 'جبر مجرد 1',
                                  text3: 'Instructor’s Solutions Manual',
                                  text2: 'كتاب المادة',
                                  pathName: 'كتاب المادة Instructor’s Solutions Manual'),
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
                              const AbstractAlgebra1Widget(
                                  text1: 'جبر مجرد 1',
                                  text3: 'الكتروني',
                                  text2: 'سنوات جبر مجرد 1',
                                  pathName: 'سنوات الكنروني'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const AbstractAlgebra1Widget(
                                  text1: 'جبر مجرد 1',
                                  text3: 'عامة',
                                  text2: 'سنوات جبر مجرد 1',
                                  pathName: 'سنوات عامة '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const AbstractAlgebra1Widget(
                                  text1: 'جبر مجرد 1',
                                  text3: 'للدكتور امير',
                                  text2: 'سنوات جبر مجرد 1',
                                  pathName: 'سنوات مجرد د امير'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const AbstractAlgebra1Widget(
                                  text1: 'جبر مجرد 1',
                                  text3: 'فاينل د.امير',
                                  text2: 'سنوات جبر مجرد 1',
                                  pathName: 'فاينل د امير'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const AbstractAlgebra1Widget(
                                  text1: 'جبر مجرد 1',
                                  text3: 'ميد د.امير',
                                  text2: 'سنوات جبر مجرد 1',
                                  pathName: 'ميد د امير'),
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
                              const AbstractAlgebra1Widget(
                                  text1: 'جبر مجرد 1',
                                  text3: 'لا يوجد',
                                  text2: 'لا يوجد',
                                  pathName: 'سنوات عامة '),
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
