import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widget/Anatomy_of_a_plantt_widget.dart';

class AnatomyOfAplantt extends StatefulWidget {
  static const String RoutName = 'AnatomyOfAplantt';

  @override
  State<AnatomyOfAplantt> createState() => _AnatomyOfAplanttState();
}

class _AnatomyOfAplanttState extends State<AnatomyOfAplantt> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("تشريح نبات").snapshots();

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
                              const AnatomyOfAplanttWidget(
                                  text1: 'تشريح نبات',
                                  text3: '',
                                  text2: 'سلايدات تشريح نبات',
                                  pathName: ' سلايدات تشريح نبات '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const AnatomyOfAplanttWidget(
                                  text1: 'تشريح نبات',
                                  text3: '',
                                  text2: 'لاب تشريح نبات',
                                  pathName: 'لاب تشريح نبات '),
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
                              const AnatomyOfAplanttWidget(
                                  text1: 'تشريح نبات',
                                  text3: 'فيرست',
                                  text2: 'سنوات تشريح نبات',
                                  pathName: 'سنوات فيرست '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const AnatomyOfAplanttWidget(
                                  text1: 'تشريح نبات',
                                  text3: 'ميد',
                                  text2: 'سنوات تشريح نبات',
                                  pathName: 'ميد تشريح نبات سنوات '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const AnatomyOfAplanttWidget(
                                  text1: 'تشريح نبات',
                                  text3: 'سكند',
                                  text2: 'سنوات تشريح نبات',
                                  pathName: 'سكند سنوات تشريح نبات '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const AnatomyOfAplanttWidget(
                                  text1: 'تشريح نبات',
                                  text3: 'فاينل',
                                  text2: 'سنوات تشريح نبات',
                                  pathName: 'سنوات فاينل تشريح نبات '),
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
                              const AnatomyOfAplanttWidget(
                                  text1: 'تشريح نبات',
                                  text3: 'لا يوجد',
                                  text2: 'لا يوجد',
                                  pathName: ' سلايدات تشريح نبات '),
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
