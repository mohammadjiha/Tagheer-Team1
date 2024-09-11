import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../Widget/Thermo_widget.dart';

class Thermo extends StatefulWidget {
  static const String RoutName = 'Thermo';

  const Thermo({super.key});

  @override
  State<Thermo> createState() => _ThermoState();
}

class _ThermoState extends State<Thermo> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Thermo").snapshots();

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
                          const ThermoWidget(
                              text1: "Thermo",
                              text3: "Thermo",
                              text2: "كتاب المادة",
                              pathName:
                                  "كتاب المادة Thermodynamics, Kinetic Theory, and Statistical Thermodynamics"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ThermoWidget(
                              text1: "Thermo",
                              text3: "Thermo",
                              text2: "حلول الكتاب",
                              pathName: "حلول الكتاب "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ThermoWidget(
                              text1: "Thermo",
                              text3: "للدكتور محمد الصغير",
                              text2: "Thermo دفتر شرح ",
                              pathName: "دفتر محمد الصغير"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ThermoWidget(
                              text1: "Thermo",
                              text3: "للدكتور محمد الصغير",
                              text2: "Thermo دفتر شرح ",
                              pathName: "دفتر محمد الصغير"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ThermoWidget(
                              text1: "Thermo",
                              text3: "للدكتور قاسم",
                              text2: "دفتر شرح Thermo",
                              pathName: "دفتر د قاسم"),
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
                          const ThermoWidget(
                              text1: "Thermo",
                              text3: "كاملة",
                              text2: "سنوات Thermo",
                              pathName: "سنوات ثيرمو "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ThermoWidget(
                              text1: "Thermo",
                              text3: "للدكتور سفيان",
                              text2: "سنوات Thermo",
                              pathName: "سنوات د سفيان"),
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
                          const ThermoWidget(
                              text1: "Thermo",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName:
                                  "كتاب المادة Thermodynamics, Kinetic Theory, and Statistical Thermodynamics"),
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
