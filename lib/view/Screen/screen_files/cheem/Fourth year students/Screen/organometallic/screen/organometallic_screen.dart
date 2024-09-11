import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Lap_Organac/widget/lap_organc_widget.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/analytical/widget/analytical_widget.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/lap_analytical/widget/lap_analytical_widget.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/c++/widget/c++widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/organometallic_widget.dart';

class Organometallic extends StatefulWidget {
  static const String RoutName = 'Organometallic';

  const Organometallic({super.key});

  @override
  State<Organometallic> createState() => _OrganometallicState();
}

class _OrganometallicState extends State<Organometallic> {
  final Stream<QuerySnapshot> datapdfStrem = FirebaseFirestore.instance
      .collection("كيمياء غير عضوية فلزية")
      .snapshots();

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
                      height: 1.h,
                    ),
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
                          const OrganometallicWidget(
                              text1: "اورغانو",
                              text3: "للدكتور عدنان ابو صرة",
                              text2: "سلايدات شرح اورغانو",
                              pathName: "شرح عدنان ابو صرة"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const OrganometallicWidget(
                              text1: "اورغانو",
                              text3: "للدكتورة فداء",
                              text2: "سلايدات شرح اورغانو",
                              pathName: "شرح فداء"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const OrganometallicWidget(
                              text1: "اورغانو",
                              text3: "للطالبة هبة المنفلوطي",
                              text2: "تلخيص اورغانو",
                              pathName: "تلخيص هبة المنفلوطي اورغلنو"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const OrganometallicWidget(
                              text1: "اورغانو",
                              text3: "للطالبة حنين زيادة",
                              text2: "تلخيص اورغانو فيرست",
                              pathName: "شرح فيرست حنين زيادة"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const OrganometallicWidget(
                              text1: "اورغانو",
                              text3: "للطالبة حنين زيادة",
                              text2: "تلخيص اورغانو سكند",
                              pathName: "تلخيص سكند لحنين زيادة"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const OrganometallicWidget(
                              text1: "اورغانو",
                              text3: "للطالبة حنين زيادة",
                              text2: "تلخيص اورغانو سكند (2)",
                              pathName:
                                  "تلخيص اورغانو سكند للطالبة حنين زيادة"),
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
                          const OrganometallicWidget(
                              text1: "اورغانو",
                              text3: "اورغانو",
                              text2: "نماذج امتحانات",
                              pathName: "نماذج امتحانات شاملة المادة اورغانو"),
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
                          const OrganometallicWidget(
                              text1: "اورغانو",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName: "شرح عدنان ابو صرة"),
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
