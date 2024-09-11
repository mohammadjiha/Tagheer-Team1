import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Organic/widget/organic_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/organic2_widget.dart';

class Organic2 extends StatefulWidget {
  static const String RoutName = 'Organic2';

  const Organic2({super.key});

  @override
  State<Organic2> createState() => _Organic2State();
}

class _Organic2State extends State<Organic2> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection('organic 2   ').snapshots();

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
                          const organic2Widget(
                              text1: 'عضوية 2',
                              text3: 'عضوية2',
                              text2: 'سلايدات المادة',
                              pathName: 'سلايدات او 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic2Widget(
                              text1: 'عضوية 2',
                              text3: 'عضوية 2',
                              text2: 'سلايدات د.بدر',
                              pathName: 'سلايدات د بدر'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic2Widget(
                              text1: 'عضوية 2',
                              text3: 'عضوية 2',
                              text2: 'شرح الطالبة مريم شعيب',
                              pathName: 'شرح مريم او 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic2Widget(
                              text1: 'عضوية 2',
                              text3: 'عضوية 2',
                              text2: 'شرح الطالب صهيب المدلل',
                              pathName: 'شرح صهيب المدلل او 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic2Widget(
                              text1: 'عضوية 2',
                              text3: 'عضوية2',
                              text2: 'سلايدات المادة',
                              pathName: 'سلايدات او 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic2Widget(
                              text1: 'عضوية 2',
                              text3: 'شابتر 11',
                              text2: 'تلخيص تفاعلات',
                              pathName: 'تلخيص تفاعلات شابتر 11'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic2Widget(
                              text1: 'عضوية 2',
                              text3: 'شابتر 12',
                              text2: 'تلخيص تفاعلات',
                              pathName: 'تلخيص تفاعلات شابتر 12'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic2Widget(
                              text1: 'عضوية 2',
                              text3: 'شابتر 16',
                              text2: 'تلخيص تفاعلات',
                              pathName: 'تلخيص تفاعلات شابتر 16'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic2Widget(
                              text1: 'عضوية 2',
                              text3: 'عضوية 2',
                              text2: 'تلخيص شابتر 13',
                              pathName: 'تلخيص شابتر 13'),
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
                          const organic2Widget(
                              text1: 'عضوية 2',
                              text3: 'عضوية 2',
                              text2: 'سنوات + تست بانك',
                              pathName: 'سنوات+تست بانك او 2'),
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
                          const organic2Widget(
                              text1: "عضوية 2",
                              text3: "عضوية 2",
                              text2: "فيديوهات شرح د.نايف",
                              pathName: "فيديوهات شرح نايف"),
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
