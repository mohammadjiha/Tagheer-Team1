import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/math1_widget.dart';

class Math1 extends StatefulWidget {
  static const String RoutName = 'Math 1';

  const Math1({super.key});

  @override
  State<Math1> createState() => _Math1State();
}

class _Math1State extends State<Math1> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Math 1").snapshots();

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
                          const Math1Widget(
                              text1: "Math 1",
                              text3: "MATHEMATICAL..PHYSICAL",
                              text2: "كتاب المادة",
                              pathName:
                                  "MATHEMATICAL METHODS IN THE PHYSICAL SCIENCES كتاب المادة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Math1Widget(
                              text1: "Math 1",
                              text3: "للدكتور شرحبيل",
                              text2: "تلخيص سنابل سلمان",
                              pathName:
                                  "تلخيص سنابل سلمان للدكتور شرحبيل ايونس "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Math1Widget(
                              text1: "Math 1",
                              text3: "MATHEMATICAL..PHYSICAL",
                              text2: "حلول الكتاب",
                              pathName: "حلول الكتاب "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Math1Widget(
                              text1: "Math 1",
                              text3: "للدكتور عادل",
                              text2: "دفتر Math 1",
                              pathName: "دفتر د عادل"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Math1Widget(
                              text1: "Math 1",
                              text3: "للدكتور شرحبيل",
                              text2: "دفتر Math 1",
                              pathName: "دفتر شرحبيل "),
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
                          const Math1Widget(
                              text1: "Math 1",
                              text3: "كاملة",
                              text2: "سنوات Math 1",
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
                          const Math1Widget(
                              text1: "Math 1",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName:
                                  "MATHEMATICAL METHODS IN THE PHYSICAL SCIENCES كتاب المادة "),
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
