import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../Widget/KAHRO2_widget.dart';

class KAHRO2 extends StatefulWidget {
  static const String RoutName = 'KAHRO2';

  const KAHRO2({super.key});

  @override
  State<KAHRO2> createState() => _KAHRO2State();
}

class _KAHRO2State extends State<KAHRO2> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("كهرو 2").snapshots();

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
                          const KAHRO2Widget(
                              text1: "كهرو 2",
                              text3: "ELECTRODYNAMICS",
                              text2: "INTRODUCTION to كتاب",
                              pathName:
                                  "INTRODUCTIONto ELECTRODYNAMICS كتاب المادة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const KAHRO2Widget(
                              text1: "كهرو 2",
                              text3: "SOLUTIONS MANUAL",
                              text2: "حلول كتاب INSTRUCTOR'S",
                              pathName:
                                  "حلول كتاب INSTRUCTOR'S SOLUTIONS MANUAL"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const KAHRO2Widget(
                              text1: "كهرو 2",
                              text3: "كهرو 2",
                              text2: "دفتر شرح",
                              pathName: " دفتر شرح اخر كهرو 2 "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const KAHRO2Widget(
                              text1: "كهرو 2",
                              text3: "للدكتورة صفية",
                              text2: "دفتر شرح كهرو 2",
                              pathName: "دفتر د صفية"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const KAHRO2Widget(
                              text1: "كهرو 2",
                              text3: "شرح ميد",
                              text2: "دفتر شرح كهرو 2",
                              pathName: "دفتر شرح ميد "),
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
                          const KAHRO2Widget(
                              text1: "كهرو 2",
                              text3: "كاملة",
                              text2: "سنوات كهرو 2",
                              pathName: "سنوات كهرو 2 "),
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
                          const KAHRO2Widget(
                              text1: "كهرو 2",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName:
                                  "INTRODUCTIONto ELECTRODYNAMICS كتاب المادة "),
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
