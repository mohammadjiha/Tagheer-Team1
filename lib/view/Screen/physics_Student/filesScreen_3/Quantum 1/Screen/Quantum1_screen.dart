import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/Quantum1_widget.dart';

class Quantum1 extends StatefulWidget {
  static const String RoutName = 'Quantum1';

  const Quantum1({super.key});

  @override
  State<Quantum1> createState() => _Quantum1State();
}

class _Quantum1State extends State<Quantum1> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Quantum 1").snapshots();

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
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "quantum physics",
                              text2: "كتاب المادة",
                              pathName: "كتاب quantum physics"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "quantum physics",
                              text2: "حلول الكتاب",
                              pathName: "حلول الكتاب الكوانتم "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "quantum 1",
                              text2: "شباتر المادة",
                              pathName: "شباتر  المادة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "quantum 1",
                              text2: "ملخص المادة",
                              pathName: "ملخص المادة "),
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
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "سكند للدكتور طارق",
                              text2: "quantum 1 سنوات",
                              pathName: "سكتد كوانتم د طارق"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "فاينل للدكتورة صفية",
                              text2: "quantum 1 سنوات",
                              pathName: "فاينل د كوانتم د صفية"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "فاينل للدكتور غسان",
                              text2: "quantum 1 سنوات",
                              pathName: "فايمل د غسان"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "فاينل للدكتور غسان",
                              text2: "quantum 1 سنوات",
                              pathName: "فايمل د غسان"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "فيرست للدكتور طارق",
                              text2: "quantum 1 سنوات",
                              pathName: "فيرست د طارق"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "ميد للدكتور غسان",
                              text2: "quantum 1 سنوات",
                              pathName: "ميد كواتم د غسان"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "كاملة",
                              text2: "quantum 1 سنوات",
                              pathName: "سنوات كوانتم "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "سنوات + اسايمنت",
                              text2: "quantum 1 سنوات",
                              pathName: "سنوات و اسايمنت "),
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
                          const Quantum1Widget(
                              text1: "Quantum 1",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName: "كتاب quantum physics"),
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
