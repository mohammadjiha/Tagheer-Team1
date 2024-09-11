import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../Widget/Solid_widget.dart';

class Solid extends StatefulWidget {
  static const String RoutName = 'Solid';

  const Solid({super.key});

  @override
  State<Solid> createState() => _SolidState();
}

class _SolidState extends State<Solid> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Solid").snapshots();

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
                          const SolidWidget(
                              text1: "Solid",
                              text3: "Solid State Physics",
                              text2: "كتاب المادة",
                              pathName:
                                  "كتاب المادة Introduction to Solid State Physics"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const SolidWidget(
                              text1: "Solid",
                              text3: "Solid State Physics",
                              text2: "حلول الكتاب",
                              pathName: "حلول الكتاب "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const SolidWidget(
                              text1: "Solid",
                              text3: "Solid State Physics",
                              text2: "حلول الكتاب",
                              pathName: "حلول الكتاب "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const SolidWidget(
                              text1: "Solid",
                              text3: "للدكتور معاذ",
                              text2: "دفتر Solid",
                              pathName: "دفتر د معاذ"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const SolidWidget(
                              text1: "Solid",
                              text3: "Solid",
                              text2: "دفتر شرح",
                              pathName: "دفتر 1"),
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
                          const SolidWidget(
                              text1: "Solid",
                              text3: "كاملة",
                              text2: "سنوات Solid",
                              pathName: "سنوات "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const SolidWidget(
                              text1: "Solid",
                              text3: "الكتروني للدكتور رشاد",
                              text2: "سنوات Solid",
                              pathName: "سنوات ميد الكتروني د رشاد"),
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
                          const SolidWidget(
                              text1: "Solid",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName:
                                  "كتاب المادة Introduction to Solid State Physics"),
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
