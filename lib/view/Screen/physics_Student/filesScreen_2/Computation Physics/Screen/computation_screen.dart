import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../Widget/computation_widget.dart';

class Computation extends StatefulWidget {
  static const String RoutName = 'Computation';

  const Computation({super.key});

  @override
  State<Computation> createState() => _ComputationState();
}

class _ComputationState extends State<Computation> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Computation Physics").snapshots();

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
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "ELECTRODYNAMICS",
                              text2: "كتاب المادة",
                              pathName:
                                  "INTRODUCTIONto ELECTRODYNAMICS كتاب المادة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "ELECTRODYNAMICS",
                              text2: "حلول الكتاب",
                              pathName: "حلول الكتاب "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "ELECTRODYNAMICS",
                              text2: "كتاب المادة",
                              pathName:
                                  "INTRODUCTIONto ELECTRODYNAMICS كتاب المادة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "للدكتور زياد",
                              text2: "دفتر Computation",
                              pathName: "دفتر د زياد"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "",
                              text2: "دفتر تلخيص ميد",
                              pathName: "دفتر تلخيص ميد "),
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
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "للدكتور غسان",
                              text2: "سنوات Computation",
                              pathName: "سنوات د غسان"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "للدكتور زياد",
                              text2: "سنوات Computation",
                              pathName: "فابنل د زياد"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "للدكتور صفية",
                              text2: "سنوات Computation",
                              pathName: "فاينل د صفية"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "للدكتور زياد",
                              text2: "سنوات(فيرست) Computation",
                              pathName: "فيرست د زياد"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "للدكتور عادل",
                              text2: "سنوات(ميد) Computation",
                              pathName: "ميد د عادل"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ComputationWidget(
                              text1: "Computation",
                              text3: "",
                              text2: "سنوات(كاملة) Computation",
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
                          const ComputationWidget(
                              text1: "Computation",
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
