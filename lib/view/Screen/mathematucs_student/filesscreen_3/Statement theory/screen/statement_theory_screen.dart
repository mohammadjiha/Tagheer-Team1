import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/statement_theory_widget.dart';

class StatementTheory extends StatefulWidget {
  static const String RoutName = 'StatementTheory';

  const StatementTheory({super.key});

  @override
  State<StatementTheory> createState() => _StatementTheoryState();
}

class _StatementTheoryState extends State<StatementTheory> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("نظرية البيان").snapshots();

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
                              const StatementTheoryWidget(
                                  text1: 'نظرية البيان',
                                  text3: '',
                                  text2: 'كتاب المادة',
                                  pathName: 'كتاب المادة '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const StatementTheoryWidget(
                                  text1: 'نظرية البيان',
                                  text3: '',
                                  text2: 'اسئلة الكتاب',
                                  pathName: 'اسئلة الكتاب '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const StatementTheoryWidget(
                                  text1: 'نظرية البيان',
                                  text3: '',
                                  text2: 'حلول اسئلة الكتاب',
                                  pathName: 'حلول اسئلة الكتاب '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const StatementTheoryWidget(
                                  text1: 'نظرية البيان',
                                  text3: '1,2',
                                  text2: 'حلول شابتر',
                                  pathName: 'حلول شابتر 1 2'),
                              SizedBox(
                                width: 5.w,
                              ),
                          const StatementTheoryWidget(
                              text1: 'نظرية البيان',
                              text3: '4,5',
                              text2: 'حلول شابتر',
                              pathName: 'حلول شابتر 4 5'),
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
                              const StatementTheoryWidget(
                                  text1: 'نظرية البيان',
                                  text3: 'الكتروني',
                                  text2: 'سنوات نطرية البيان',
                                  pathName: 'سنوات الكتروني '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const StatementTheoryWidget(
                                  text1: 'نظرية البيان',
                                  text3: 'للدكتور صلاح وجاهي',
                                  text2: 'سنوات نطرية البيان',
                                  pathName: 'سنوات سكند د صلاح وجاهي'),
                              SizedBox(
                                width: 5.w,
                              ),
                              const StatementTheoryWidget(
                                  text1: 'نظرية البيان',
                                  text3: 'فيرست + سكند وجاهي',
                                  text2: 'سنوات نطرية البيان',
                                  pathName: 'فيرست سكند وجاهي '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const StatementTheoryWidget(
                                  text1: 'نظرية البيان',
                                  text3: 'فيرست وجاهي',
                                  text2: 'سنوات نطرية البيان',
                                  pathName: 'فيرست وجاهي '),
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
                              const StatementTheoryWidget(
                                  text1: 'نظرية البيان',
                                  text3: 'لا يوجد',
                                  text2: 'لا يوجد',
                                  pathName: 'كتاب المادة '),
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
