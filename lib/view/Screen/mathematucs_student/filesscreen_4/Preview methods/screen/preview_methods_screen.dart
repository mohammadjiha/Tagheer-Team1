import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/Calc%203/Widget/calc3_widget.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/preview_methods_widget.dart';

class PreviewMethods extends StatefulWidget {
  static const String RoutName = 'PreviewMethods';

  const PreviewMethods({super.key});

  @override
  State<PreviewMethods> createState() => _PreviewMethodsState();
}

class _PreviewMethodsState extends State<PreviewMethods> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("طرق معاينة").snapshots();

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
                              const PreviewMethodsWidget(
                                  text1: 'طرق معاينة',
                                  text3: 'Elementary Survey Sampling',
                                  text2: 'كتاب المادة',
                                  pathName: 'Elementary Survey Sampling'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const PreviewMethodsWidget(
                                  text1: 'طرق معاينة',
                                  text3: '',
                                  text2: 'sampling solutions',
                                  pathName: 'sampling solutions'),
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
                              const PreviewMethodsWidget(
                                  text1: 'طرق معاينة',
                                  text3: 'فيرست الكتروني',
                                  text2: 'سنوات طرق معاينة',
                                  pathName: 'فيرست الكتروني '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const PreviewMethodsWidget(
                                  text1: 'طرق معاينة',
                                  text3: 'فيرست + سكند',
                                  text2: 'سنوات طرق معاينة',
                                  pathName: 'سنوات سكند فيرست '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const PreviewMethodsWidget(
                                  text1: 'طرق معاينة',
                                  text3: 'سكند الكتروني',
                                  text2: 'سنوات طرق معاينة',
                                  pathName: 'سكند الكتروني '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const PreviewMethodsWidget(
                                  text1: 'طرق معاينة',
                                  text3: 'فاينل الكتروني',
                                  text2: 'سنوات طرق معاينة',
                                  pathName: 'فاينل الكتروني '),
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
                              const PreviewMethodsWidget(
                                  text1: 'طرق معاينة',
                                  text3: 'لا يوجد',
                                  text2: 'لا يوجد',
                                  pathName: 'Elementary Survey Sampling'),
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
