import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../Widget/Quantum2_widget.dart';

class Quantum2 extends StatefulWidget {
  static const String RoutName = 'Quantum2';

  const Quantum2({super.key});

  @override
  State<Quantum2> createState() => _Quantum2State();
}

class _Quantum2State extends State<Quantum2> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Quantum 2").snapshots();

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
                          const Quantum2Widget(
                              text1: "Quantum 2",
                              text3: "Quantum 2",
                              text2: "سلايدات المادة",
                              pathName: "سلايدات المادة وشباتر "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum2Widget(
                              text1: "Quantum 2",
                              text3: "Quantum 2",
                              text2: "دفتر شرح",
                              pathName: "دفتر شرح المادة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum2Widget(
                              text1: "Quantum 2",
                              text3: "للطالبة هدى",
                              text2: "دفتر شرح Quantum 2",
                              pathName: "دفتر هدى"),
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
                          const Quantum2Widget(
                              text1: "Quantum 2",
                              text3: "كاملة",
                              text2: "quantum 2 سنوات",
                              pathName: "سنوات كوانتم "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum2Widget(
                              text1: "Quantum 2",
                              text3: "فيرست للدكتورة صفية",
                              text2: "quantum 2 سنوات",
                              pathName: "فيرست كوانمتم د صفية"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum2Widget(
                              text1: "Quantum 2",
                              text3: "سكند للدكتورة صفية",
                              text2: "quantum 2 سنوات",
                              pathName: "سكتد كوانتم د صفية"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum2Widget(
                              text1: "Quantum 2",
                              text3: "فاينل الكتروني",
                              text2: "quantum 2 سنوات",
                              pathName: "فاينل الكتروني "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Quantum2Widget(
                              text1: "Quantum 2",
                              text3: "كويز",
                              text2: "quantum 2 سنوات",
                              pathName: "كويز كوانتم 2 "),
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
                          const Quantum2Widget(
                              text1: "Quantum 2",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName: "سلايدات المادة وشباتر "),
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
