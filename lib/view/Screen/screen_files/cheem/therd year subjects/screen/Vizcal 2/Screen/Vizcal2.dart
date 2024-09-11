import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../../../admaneger/baneer_adds/banner6.dart';
import '../Widget/Vizcal2_widget.dart';

class Vizcal2 extends StatefulWidget {
  static const String RoutName = 'Vizcal2';

  const Vizcal2({super.key});

  @override
  State<Vizcal2> createState() => _Vizcal2State();
}

class _Vizcal2State extends State<Vizcal2> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("فيزكال 2").snapshots();

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
                          const Vizcal2Widget(
                              text1: 'فيزكال 2',
                              text3: 'للدكتور جمال',
                              text2: 'تلخيص عثمان الدبوبي',
                              pathName: 'تلخيص عثمان الدبوبي'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal2Widget(
                              text1: 'فيزكال 2',
                              text3: 'فيزكال 2',
                              text2: 'سلايدات الدكتورة لبنى',
                              pathName: 'سلايدات د لبنى'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal2Widget(
                              text1: 'فيزكال 2',
                              text3: 'فيرست + سكند ',
                              text2: 'دفتر الطالبة شروق عوض',
                              pathName: 'دفتر شروق عوض فيزكال 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal2Widget(
                              text1: 'فيزكال 2',
                              text3: 'للطالبة شروق عوض',
                              text2: 'تلخيص مادة الفاينل',
                              pathName: 'تلخيص مادة الفاينل شروق عوض '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal2Widget(
                              text1: 'فيزكال 2',
                              text3: 'فيزكال 2',
                              text2: 'سلايدات الدكتور',
                              pathName: 'سلايدات د جمال'),
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
                          const Vizcal2Widget(
                              text1: 'فيزكال 2',
                              text3: 'فيزكال 2',
                              text2: 'سنوات شاملة',
                              pathName: 'سنوات منوعة فيزكال 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal2Widget(
                              text1: 'فيزكال 2',
                              text3: 'سكند',
                              text2: ' سنوات فيزكال 2',
                              pathName: 'فيزكال 2 سكند سنوات '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal2Widget(
                              text1: 'فيزكال 2',
                              text3: 'فاينل',
                              text2: 'سنوات فيزكال 2',
                              pathName: 'فاينل فيزكال2 '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal2Widget(
                              text1: 'فيزكال 2',
                              text3: 'سكند',
                              text2: 'نماذج امتحانات ',
                              pathName: 'سكند فيزكال 2'),
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
                          const Vizcal2Widget(
                              text1: "فيزكال 2",
                              text3: "للدكتور جمال",
                              text2: "فيديوهات شرح فيزكال 2",
                              pathName: "فيويهات شرح د جمال"),
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
