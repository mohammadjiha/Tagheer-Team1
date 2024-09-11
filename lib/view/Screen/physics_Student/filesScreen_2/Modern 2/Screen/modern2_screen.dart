import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../Widget/modern2_widget.dart';

class Modern2 extends StatefulWidget {
  static const String RoutName = 'Modern2';

  const Modern2({super.key});

  @override
  State<Modern2> createState() => _Modern2State();
}

class _Modern2State extends State<Modern2> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Modern 2").snapshots();

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
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "للدكتور فراس عفانة",
                              text2: "تلخيص سنابل Modern 2",
                              pathName:
                                  "تلخيص سنابل سلمان للدكتور فراس عفانة "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "للدكتور محمد",
                              text2: "تلخيص Modern 2",
                              pathName: "حديثة 2 د محمد تلخيص"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "للدكتور معاذ",
                              text2: "Modern 2 تلخيص",
                              pathName: "تلخيص حديقة 2 د معاذ"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "Modern 2",
                              text2: "تلخيص فيرست",
                              pathName: "حديثة 2 تلخيص فيرست "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "Modern 2",
                              text2: "تلخيص سكند",
                              pathName: "حديثة 2 تلخيص سكند "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "Modern 2",
                              text2: "تلخيص فاينل",
                              pathName: "تلخيص فاينل حديثة 2 "),
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
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "فيرست",
                              text2: "سنوات Modern 2",
                              pathName: "فيرست حديثة 2"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "سكند",
                              text2: "سنوات Modern 1",
                              pathName: "سكند سنوات حديثة 2 "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "ميد للدكتور وائل",
                              text2: "سنوات Modern 1",
                              pathName: "سنوات د وائل ميد"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "كاملة",
                              text2: "سنوات Modern 2",
                              pathName: "سنوات حديثة 2"),
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
                          const Modern2Widget(
                              text1: "Modern 2",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName:
                                  "تلخيص سنابل سلمان للدكتور فراس عفانة "),
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
