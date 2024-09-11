import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/Calc%203/Widget/calc3_widget.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/topology1_widget.dart';

class Topology1 extends StatefulWidget {
  static const String RoutName = 'Topology1';

  const Topology1({super.key});

  @override
  State<Topology1> createState() => _Topology1State();
}

class _Topology1State extends State<Topology1> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("تبولوجيا ١").snapshots();

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
                              const Topology1Widget(
                                  text1: 'تبولوجيا ١',
                                  text3: 'AbbassGenral topology ',
                                  text2: 'كتاب المادة',
                                  pathName: 'AbbassGenral topology '),
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
                              const Topology1Widget(
                                  text1: 'تبولوجيا ١',
                                  text3: 'تلخيص سنوات وجاهي',
                                  text2: 'سنوات تبولوجيا ١',
                                  pathName: 'تلخيص سنوات تبولجي وجلهي '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Topology1Widget(
                                  text1: 'تبولوجيا ١',
                                  text3: 'حلول سنوات وجاهي',
                                  text2: 'حلول تبولوجيا ١',
                                  pathName: 'حلول سنوات تبو وجاهي '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Topology1Widget(
                                  text1: 'تبولوجيا ١',
                                  text3: 'وجاهي',
                                  text2: 'سنوات تبولوجيا ١',
                                  pathName: 'سنوات وجاهي '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Topology1Widget(
                                  text1: 'تبولوجيا ١',
                                  text3: 'فيرست + سكند',
                                  text2: 'سنوات تبولوجيا ١',
                                  pathName: 'فيرست سكند وجاهي '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Topology1Widget(
                                  text1: 'تبولوجيا ١',
                                  text3: 'جميع السنوات',
                                  text2: 'سنوات تبولوجيا ١',
                                  pathName: 'جميع السنوات '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Topology1Widget(
                                  text1: 'تبولوجيا ١',
                                  text3: 'فاينل الكتروني ',
                                  text2: 'سنوات تبولوجيا ١',
                                  pathName: 'فاينل الكتروني '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const Topology1Widget(
                                  text1: 'تبولوجيا ١',
                                  text3: 'ميد الكتروني ',
                                  text2: 'سنوات تبولوجيا ١',
                                  pathName: 'ميد الكتروني '),
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
                              const Topology1Widget(
                                  text1: 'تبولوجيا ١',
                                  text3: 'لا يوجد',
                                  text2: 'لا يوجد',
                                  pathName: 'AbbassGenral topology '),
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
