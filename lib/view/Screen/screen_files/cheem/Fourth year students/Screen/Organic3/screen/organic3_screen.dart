import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/cheem/screen/Second%20year%20subjects/Organic/widget/organic_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/organic3_widget.dart';

class Organic3 extends StatefulWidget {
  static const String RoutName = 'Organic3';

  const Organic3({super.key});

  @override
  State<Organic3> createState() => _Organic3State();
}

class _Organic3State extends State<Organic3> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("organic 3 ").snapshots();

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
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'للدكتور بدر',
                              text2: 'سلايدات عضوية 3',
                              pathName: 'سلايدات د بدر او 3'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'للطالبة مريم شعيب',
                              text2: 'دفتر شرح (فيرست) عضوية 3',
                              pathName: 'شرح مريم شعيب فيرست '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'للطالبة مريم شعيب',
                              text2: 'دفتر شرح (سكند) عضوية 3',
                              pathName: 'شرح مادة السكند مريم شعيب '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'للطالبة مريم شعيب',
                              text2: 'دفتر شرح (فاينل) عضوية 3',
                              pathName: 'ششرح مريم شعيب فاينب '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'عضوية 3',
                              text2: 'دفتر شرح',
                              pathName: 'شرح طالبة او 3'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'عضوية 3',
                              text2: 'شرح شابتر 23',
                              pathName: 'شرح شابتر 23'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'للدكتور بدر',
                              text2: 'سلايدات عضوية 3',
                              pathName: 'سلايدات د بدر او 3'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'عضوية 3',
                              text2: 'دفتر شرح(2)',
                              pathName: 'دفتر شرح او 3'),
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
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'شاملة حسب كل شابتر',
                              text2: 'سنوات + تست بانك',
                              pathName: 'تست باتك حسب كل شابتر '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'شاملة حسب كل شابتر',
                              text2: 'سنوات عضوية 3',
                              pathName: 'سنوات او 3'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'نماذج امتحانات',
                              text2: 'سنوات ',
                              pathName: 'سنوات او 3 3'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const organic3Widget(
                              text1: 'عضوية 3',
                              text3: 'سكند',
                              text2: 'سنوات عضوية 3 ',
                              pathName: 'سنوات او 3 سكند '),
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
                          const organic3Widget(
                              text1: "عضوية 3",
                              text3: "عضوية 3",
                              text2: "فيديوهات شرح",
                              pathName: "فيديوهات"),
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
