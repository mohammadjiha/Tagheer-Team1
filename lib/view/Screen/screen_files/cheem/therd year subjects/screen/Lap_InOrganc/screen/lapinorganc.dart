import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../../../admaneger/baneer_adds/banner6.dart';
import '../Widget/lapinorganc_widget.dart';

class LapInOrganic extends StatefulWidget {
  static const String RoutName = 'LapInOrganic';

  const LapInOrganic({super.key});

  @override
  State<LapInOrganic> createState() => _LapInOrganicState();
}

class _LapInOrganicState extends State<LapInOrganic> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("لاب غير عضوية").snapshots();

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
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: '',
                              text2: 'مانيوال لاب غير عضوية',
                              pathName: 'مانيوال لاب ان '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: '',
                              text2: 'ريبورتات لاب غير عضوية',
                              pathName: 'ريبورتات لاب ان '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: 'لاب غير عضوية',
                              text2: 'دفتر حنين',
                              pathName: 'دفتر حنين '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: '',
                              text2: 'تلخيص لاب غير عضوية',
                              pathName: 'تلخيص لاب  ان مصور'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: 'مادة الفاينل',
                              text2: 'تلخيص لاب غير عضوية',
                              pathName: 'تلخيص لاب  ان فاينال'),
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
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: '',
                              text2: 'كويزات لاب غير عضوية',
                              pathName: 'كويزات لاب فيزكال'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: 'ميد + فاينل',
                              text2: 'سنوات لاب غير عضوية',
                              pathName: 'سناوت لاب ان '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: 'فاينل',
                              text2: 'سنوات غير عضوية',
                              pathName: 'فاينال لاب فيزكال '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: 'ميد',
                              text2: 'سنوات لاب غير عضوية',
                              pathName: 'ميد لاب ان'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: 'شاملة المادة كاملة',
                              text2: 'نماذج امتحانات لاب غير عضوية',
                              pathName: 'نماذج سنوات لاب ان '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: 'ميد',
                              text2: 'سنوات لاب غير عضوية',
                              pathName: 'ميد لاب ان'),
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
                          const LapInOrganicWidget(
                              text1: 'لاب غير عضوية',
                              text3: 'لاب غير عضوية',
                              text2: 'فيديوهات شرح',
                              pathName: 'فيديوهات شرح لاب غير عضوية'),
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
