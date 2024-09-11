import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../Widget/modern1_widget.dart';

class Modern1 extends StatefulWidget {
  static const String RoutName = 'Modern1';

  const Modern1({super.key});

  @override
  State<Modern1> createState() => _Modern1State();
}

class _Modern1State extends State<Modern1> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Modern 1").snapshots();

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
                          const Modern1Widget(
                              text1: "Modern 1",
                              text3: "Modern physics",
                              text2: "كتاب المادة",
                              pathName: " modern physics كتاب المادة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern1Widget(
                              text1: "Modern 1",
                              text3: "Modern physics",
                              text2: "Problem Solutions",
                              pathName: "Problem Solutions"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern1Widget(
                              text1: "Modern 1",
                              text3: "Modern 1",
                              text2: "دفتر شرح",
                              pathName: "دفتر حديثة 1 "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern1Widget(
                              text1: "Modern 1",
                              text3: "Modern  Physics",
                              text2: "كتاب Concepts of",
                              pathName: "كتاب Concepts of Modern  Physics"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern1Widget(
                              text1: "Modern 1",
                              text3: "Modern 1",
                              text2: "ملخص فيزيائية حديثة",
                              pathName: "ملخص فيزيائية حديثة "),
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
                          const Modern1Widget(
                              text1: "Modern 1",
                              text3: "فيرست",
                              text2: "سنوات Modern 1",
                              pathName: "سنوات فيرست "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern1Widget(
                              text1: "Modern 1",
                              text3: "سكند",
                              text2: "سنوات Modern 1",
                              pathName: "سنوات سكند "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern1Widget(
                              text1: "Modern 1",
                              text3: "فاينل",
                              text2: "سنوات Modern 1",
                              pathName: "سنوات فاينل "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern1Widget(
                              text1: "Modern 1",
                              text3: "فيرست + فاينل",
                              text2: "سنوات Modern 1",
                              pathName: "سنوات فيرست و فاينل  حديقة "),
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
                          const Modern1Widget(
                              text1: "Modern 1",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName: " modern physics كتاب المادة "),
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
