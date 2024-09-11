import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner6.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widget/lapphsiscs_widget.dart';

class LapPhsiscs3 extends StatefulWidget {
  static const String RoutName = 'LapPhsiscs3';

  const LapPhsiscs3({super.key});

  @override
  State<LapPhsiscs3> createState() => _LapPhsiscs3State();
}

class _LapPhsiscs3State extends State<LapPhsiscs3> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Lab Physics 3").snapshots();

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
                          const LapPhsiscs3Widget(
                              text1: "LapPhsiscs3",
                              text3: "للاستاذة منار",
                              text2: " تلخيص سنابل سلمان",
                              pathName:
                                  "تلخيص سنابل سلمان للاستاذة منار العبيد "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapPhsiscs3Widget(
                              text1: "LapPhsiscs3",
                              text3: "للطالبة هديل",
                              text2: "تلخيص لاب فيزياء 3",
                              pathName: "تلخيص لاب فيزياء 3 لطالبة هديل "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapPhsiscs3Widget(
                              text1: "LapPhsiscs3",
                              text3: "للطالبة سدين الغزاوي",
                              text2: "تلخيص لاب فيزياء 3",
                              pathName:
                                  "تلخيص لاب فيزياء 3 للطالبة سدين الغزاوي "),
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
                          const LapPhsiscs3Widget(
                              text1: "LapPhsiscs3",
                              text3: "سنوات لاب فيزياء 3",
                              text2: "(ميد + فاينل)",
                              pathName: "سنوات لاب فيزياء 3"),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapPhsiscs3Widget(
                              text1: "LapPhsiscs3",
                              text3: "سنوات ميد لاب فيزياء",
                              text2: "للاستاذ اياد",
                              pathName: "سنوات لاب فزيياء ميد د اياد"),
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
                          const LapPhsiscs3Widget(
                              text1: "LapPhsiscs3",
                              text3: "لا يوجد",
                              text2: "لا يوجد",
                              pathName:
                                  "تلخيص سنابل سلمان للاستاذة منار العبيد "),
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
