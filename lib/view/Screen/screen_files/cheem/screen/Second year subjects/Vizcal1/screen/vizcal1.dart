import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Organic/widget/organic_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../../../admaneger/baneer_adds/banner6.dart';
import '../../Organic 2/widget/organic2_widget.dart';
import '../widget/vizcal1_widget.dart';

class Vizcal1 extends StatefulWidget {
  static const String RoutName = 'Vizcal1';

  const Vizcal1({super.key});

  @override
  State<Vizcal1> createState() => _Vizcal1State();
}

class _Vizcal1State extends State<Vizcal1> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection('فيزكال1').snapshots();

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
                          const Vizcal1Widget(
                              text1: 'فيزكال 1',
                              text3: 'فيزكال 1',
                              text2: 'كتاب المادة',
                              pathName: 'كتاب فيزكال 1'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal1Widget(
                              text1: 'فيزكال 1',
                              text3: 'فيزكال 1',
                              text2: 'تلخيص مصطفى ابو باجة',
                              pathName: 'تلخيص مصطفى ابو باجة'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal1Widget(
                              text1: 'فيزكال 1',
                              text3: 'فيزكال 1',
                              text2: 'تلخيص رجاء',
                              pathName: 'تلخيص رجاء ماجد'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal1Widget(
                              text1: 'فيزكال 1',
                              text3: 'فيزكال 1',
                              text2: 'كتاب المادة',
                              pathName: 'كتاب فيزكال 1'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal1Widget(
                              text1: 'فيزكال 1',
                              text3: 'فيزكال 1',
                              text2: 'ملخيص قوانين + حل اسئلة',
                              pathName: 'ملخص قوانين وحل اسئلة'),
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
                          const Vizcal1Widget(
                              text1: 'فيزكال 1',
                              text3: 'فيرست',
                              text2: 'سنوات فيزكال 1',
                              pathName: 'سنولت فيرست يزكال '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal1Widget(
                              text1: 'فيزكال 1',
                              text3: 'سكند',
                              text2: 'سنوات فيزكال 1',
                              pathName: 'سكند فيزكال'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal1Widget(
                              text1: 'فيزكال 1',
                              text3: 'فاينل',
                              text2: 'سنوات فيزكال 1',
                              pathName: 'اسئلة سنوات فيزكال فاينل'),
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
                          const Vizcal1Widget(
                              text1: "فيزكال 1",
                              text3: "للدكتور موسى",
                              text2: "فيديوهات شرح",
                              pathName: "فيديوهات د موسى"),
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
