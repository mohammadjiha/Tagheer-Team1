import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widget/Cell_biology_widget.dart';

class CellBiology extends StatefulWidget {
  static const String RoutName = 'CellBiology';

  @override
  State<CellBiology> createState() => _CellBiologyState();
}

class _CellBiologyState extends State<CellBiology> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("بيولوجيا الخلية").snapshots();

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
                              const CellBiologyWidget(
                                  text1: 'بيولوجيا الخلية',
                                  text3: '',
                                  text2: 'سلايدات المادة',
                                  pathName: 'سلايدات المادة '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const CellBiologyWidget(
                                  text1: 'بيولوجيا الخلية',
                                  text3: '',
                                  text2: 'تحديد الكتاب المادة',
                                  pathName: 'تحديد الكتاب '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const CellBiologyWidget(
                                  text1: 'بيولوجيا الخلية',
                                  text3: 'Preview of the Cell',
                                  text2: 'الكتاب المادة',
                                  pathName: 'كتاب المادة A Preview of the Cell'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const CellBiologyWidget(
                                  text1: 'بيولوجيا الخلية',
                                  text3: 'world of the cell by becker',
                                  text2: 'الكتاب المادة',
                                  pathName: 'كتاب المادة the world of the cell by becker '),
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
                              const CellBiologyWidget(
                                  text1: 'بيولوجيا الخلية',
                                  text3: 'ميد + فاينل',
                                  text2: 'سنوات بيولوجيا الخلية',
                                  pathName: 'سنوات الكرتوني ميد وفاينب '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const CellBiologyWidget(
                                  text1: 'بيولوجيا الخلية',
                                  text3: 'الكتروني',
                                  text2: 'سنوات بيولوجيا الخلية',
                                  pathName: 'سنوات سل الكتروني '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const CellBiologyWidget(
                                  text1: 'بيولوجيا الخلية',
                                  text3: 'ميد',
                                  text2: 'سنوات بيولوجيا الخلية',
                                  pathName: 'سنوات ميد '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const CellBiologyWidget(
                                  text1: 'بيولوجيا الخلية',
                                  text3: 'ورقي',
                                  text2: 'سنوات بيولوجيا الخلية',
                                  pathName: 'سوات ورقي '),
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
                              const CellBiologyWidget(
                                  text1: 'بيولوجيا الخلية',
                                  text3: 'لا يوجد',
                                  text2: 'لا يوجد',
                                  pathName: 'سلايدات المادة '),
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
