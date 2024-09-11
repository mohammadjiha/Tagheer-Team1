import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tageer/view/Screen/mathematucs_student/filesscreen_2/Calc%203/Widget/calc3_widget.dart';

import '../widget/Medicinal_plants_widget.dart';

class MedicinalPlants extends StatefulWidget {
  static const String RoutName = 'MedicinalPlants';

  @override
  State<MedicinalPlants> createState() => _MedicinalPlantsState();
}

class _MedicinalPlantsState extends State<MedicinalPlants> {
  final Stream<QuerySnapshot> datapdfStrem =
  FirebaseFirestore.instance.collection("أحياء دقيقة طبية").snapshots();

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
                              const MedicinalPlantsWidget(
                                  text1: 'أحياء دقيقة طبية',
                                  text3: 'Nosocomial Infections',
                                  text2: 'سلايدات',
                                  pathName: 'Nosocomial Infections سلايدات '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const MedicinalPlantsWidget(
                                  text1: 'أحياء دقيقة طبية',
                                  text3: '',
                                  text2: 'تلخيص لاب طبية',
                                  pathName: 'تلخيص لاب طبية '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const MedicinalPlantsWidget(
                                  text1: 'أحياء دقيقة طبية',
                                  text3: '',
                                  text2: 'لاب مايكرو طبية ',
                                  pathName: 'لاب مايكرو طبية '),
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
                              const MedicinalPlantsWidget(
                                  text1: 'أحياء دقيقة طبية',
                                  text3: 'سكند',
                                  text2: 'سنوات احياء دقيقة طبية',
                                  pathName: 'سكند مايكرو طبية '),
                              SizedBox(
                                width: 5.w,
                              ),
                              const MedicinalPlantsWidget(
                                  text1: 'أحياء دقيقة طبية',
                                  text3: 'فاينل',
                                  text2: 'سنوات احياء دقيقة طبية',
                                  pathName: 'فاينل مايكرو طبية '),
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
                              const MedicinalPlantsWidget(
                                  text1: 'أحياء دقيقة طبية',
                                  text3: 'لا يوجد',
                                  text2: 'لا يوجد',
                                  pathName: 'Nosocomial Infections سلايدات '),
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