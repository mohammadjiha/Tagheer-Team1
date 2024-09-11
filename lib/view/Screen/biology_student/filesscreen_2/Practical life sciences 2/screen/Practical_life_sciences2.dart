import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widget/Practical_life_sciences2_widget.dart';

class PracticalLifeSciences2 extends StatefulWidget {
  static const String RoutName = 'PracticalLifeSciences2';

  @override
  State<PracticalLifeSciences2> createState() => _PracticalLifeSciences2State();
}

class _PracticalLifeSciences2State extends State<PracticalLifeSciences2> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("علوم حياة عامة عملية 2").snapshots();

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
                              const PracticalLifeSciences2Widget(
                                  text1: 'علوم حياة عامة عملية 2',
                                  text3: '',
                                  text2: 'تحديد مانيوال بيو2 ',
                                  pathName: 'تحديد مانيوال بيو2 '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const PracticalLifeSciences2Widget(
                                  text1: 'علوم حياة عامة عملية 2',
                                  text3: '',
                                  text2: 'تلخيص عمر منسي + اسئلة سنوات ',
                                  pathName: 'تلخيص عمر منسي اسئلة سنوات '),
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
                              const PracticalLifeSciences2Widget(
                                  text1: 'علوم حياة عامة عملية 2',
                                  text3: 'ميد',
                                  text2: 'سنوات لا بيو 2',
                                  pathName: 'ميد لاب بيو 2'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const PracticalLifeSciences2Widget(
                                  text1: 'علوم حياة عامة عملية 2',
                                  text3: 'فاينل',
                                  text2: 'سنوات لا بيو 2',
                                  pathName: 'سنوات لاب  بيو 2 فاينل '),
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
                          const PracticalLifeSciences2Widget(
                              text1: 'علوم حياة عامة عملية 2',
                              text3: 'لا يوجد',
                              text2: 'لا يوجد',
                              pathName: 'تلخيص عمر منسي اسئلة سنوات '),
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
