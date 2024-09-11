import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner6.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/lap_chem105/Widget/lapchem105.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner_adds.dart';

class LapChem105 extends StatefulWidget {
  static const String RoutName = 'LapChem105';

  const LapChem105({super.key});

  @override
  State<LapChem105> createState() => _LapChem105State();
}

class _LapChem105State extends State<LapChem105> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection('fileUrl').snapshots();

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
                          const lapchem105Widget(
                              text1: 'لاب كيمياء 105',
                              text3: 'اعداد الطالب عمر عودة',
                              text2: 'تلخيص لاب كيمياء 105',
                              pathName:
                                  'تلخبص لاب كيمياء 105اعداد الطالب عمر عودة'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const lapchem105Widget(
                              text1: 'لاب كيمياء 105',
                              text3: 'اعداد فريق اوميجا',
                              text2: 'تلخيص لاب كيمياء 105',
                              pathName: 'دفتر لاب كيمياء 105 لفيق اوميجا'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const lapchem105Widget(
                              text1: 'لاب كيمياء 105',
                              text3: '',
                              text2: 'ريبورتات لاب كيمياء105',
                              pathName: 'ريبورتات لاب 105'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const lapchem105Widget(
                              text1: 'لاب كيمياء 105',
                              text3: 'اعداد الطالب نمر عودة',
                              text2: 'تلخيص لاب كيمياء 105',
                              pathName: 'كيمياء عامة عملية تلخيص نمر عودة'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const lapchem105Widget(
                              text1: 'لاب كيمياء 105',
                              text3: '',
                              text2: 'مانيوال لا كيمياء 105',
                              pathName: 'مانيوال لا كيمياء عامة عملية'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const lapchem105Widget(
                              text1: 'لاب كيمياء 105',
                              text3: '',
                              text2: 'تلخيص مفتاح الابداع',
                              pathName: 'مفتاح الابداع كيمياء عامة  عملية 105'),
                          SizedBox(
                            width: 5.w,
                          )
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
                          const lapchem105Widget(
                              text1: 'لاب كيمياء 105',
                              text3: '',
                              text2: 'كويزات لاب كيمياء 105',
                              pathName: 'كويزات لا كيمياء 105'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const lapchem105Widget(
                              text1: 'لاب كيمياء 105',
                              text3: '',
                              text2: 'كويزات لاب كيمياء 105',
                              pathName: 'كويزات لا 105'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const lapchem105Widget(
                              text1: 'لاب كيمياء 105',
                              text3: '',
                              text2: 'سنوات كيمياء 105',
                              pathName: 'سنوات لا كيمياء 105'),
                          SizedBox(
                            width: 5.w,
                          )
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
                          const lapchem105Widget(
                              text1: 'لاب كيمياء 105',
                              text3: '',
                              text2: 'شروحات تجارب لاب كيمياء 105',
                              pathName: 'شرح لاب 105(2015)'),
                        ],
                      ),
                    )
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
