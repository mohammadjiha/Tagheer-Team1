import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../Widget/Classical_widget.dart';

class Classical extends StatefulWidget {
  static const String RoutName = 'Classical';

  const Classical({super.key});

  @override
  State<Classical> createState() => _ClassicalState();
}

class _ClassicalState extends State<Classical> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Classical").snapshots();

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
                          const ClassicalWidget(
                              text1: "Classical",
                              text3: "analytical mechanucs",
                              text2: "كتاب المادة",
                              pathName: "كتاب المادة analytical mechanucs"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ClassicalWidget(
                              text1: "Classical",
                              text3: "analytical mechanucs",
                              text2: "حلول الكتاب",
                              pathName: "حلول الكتاب analytical mechanucs"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ClassicalWidget(
                              text1: "Classical",
                              text3: "للدكتور فراس",
                              text2: "دفتر سنابل",
                              pathName:
                                  "دفتر سنابل للدكتور فراس الدويري ميكانيكا كلاسيكية "),
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
                          const ClassicalWidget(
                              text1: "Classical",
                              text3: "الكتروني",
                              text2: "سنوات Classical",
                              pathName: "سنوات الكتروني "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ClassicalWidget(
                              text1: "Classical",
                              text3: "سكند د.زياد",
                              text2: "سنوات Classical",
                              pathName: " سكتد د زياد"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ClassicalWidget(
                              text1: "Classical",
                              text3: "فيرست د.زياد",
                              text2: "سنوات Classical",
                              pathName: "سنوات فيرست د يزاد"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ClassicalWidget(
                              text1: "Classical",
                              text3: "فاينل",
                              text2: "سنوات Classical",
                              pathName: "فاينل كلاسيكية "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ClassicalWidget(
                              text1: "Classical",
                              text3: "ميد",
                              text2: "سنوات Classical",
                              pathName: "ميد كسلايكية "),
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
                          const ClassicalWidget(
                              text1: "Classical",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName: "كتاب المادة analytical mechanucs"),
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
