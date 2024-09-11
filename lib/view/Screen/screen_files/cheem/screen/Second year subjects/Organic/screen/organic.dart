import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Organic/widget/organic_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../../../admaneger/baneer_adds/banner6.dart';

class Organic1 extends StatefulWidget {
  static const String RoutName = 'Organic1';

  const Organic1({super.key});

  @override
  State<Organic1> createState() => _Organic1State();
}

class _Organic1State extends State<Organic1> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection('organic 1  ').snapshots();

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
                          const organic1Widget(
                              text1: 'عضوية 1',
                              text3: 'عمر جبر حلوة',
                              text2: 'شرح مفتاح الابداع',
                              pathName: 'مفتاح الابداع او 1'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic1Widget(
                              text1: 'عضوية 1',
                              text3: 'عضوية 1',
                              text2: 'سلايدات د.نايف',
                              pathName: 'سلايدات نايف'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic1Widget(
                              text1: 'عضوية 1',
                              text3: 'عضوية 1',
                              text2: 'كتاب المادة',
                              pathName: 'كتب او 1'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic1Widget(
                              text1: 'عضوية 1',
                              text3: 'للدكتور بدر',
                              text2: 'دفتر هبة المنفلوطي',
                              pathName: 'دفتر هبة'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic1Widget(
                              text1: 'عضوية 1',
                              text3: 'عضوية 1',
                              text2: 'دفتر دوران عايد',
                              pathName: 'دفتر ران عايد'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic1Widget(
                              text1: 'عضوية 1',
                              text3: 'عضوية 1',
                              text2: 'دفتر اسراء الزيود',
                              pathName: 'دفتر اسراء الزيود '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic1Widget(
                              text1: 'عضوية 1',
                              text3: 'عضوية 1',
                              text2: 'شرح الدكتور نايف',
                              pathName: 'او 1 شرح لدكتور نايف '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic1Widget(
                              text1: 'عضوية 1',
                              text3: 'عضوية 1',
                              text2: 'تلاخيص ودفاتر',
                              pathName: 'تلاخيص ممكن تفيدك'),
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
                          const organic1Widget(
                              text1: 'عضوية 1',
                              text3: 'عضوية 1',
                              text2: 'نماذج امتحانات حسب كل شابتر',
                              pathName: 'نماذج امتحانات حسب كل شابتر '),
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
                          const organic1Widget(
                              text1: "عضوية 1",
                              text3: "عضوية",
                              text2: "فيديوهات شرح",
                              pathName: "فيديوهات شرح"),
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
