import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../../../admaneger/baneer_adds/banner6.dart';
import '../widget/Vizcal3_widget.dart';

class Vizcal3 extends StatefulWidget {
  static const String RoutName = 'Vizcal3';

  const Vizcal3({super.key});

  @override
  State<Vizcal3> createState() => _Vizcal3State();
}

class _Vizcal3State extends State<Vizcal3> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("فيزكال 3").snapshots();

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
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: 'مفصلة حسب كل شابتر',
                              text2: 'كتاب المادة',
                              pathName: 'كتاب المادة  حسب الشبتاتر'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: 'للدكتور جمال',
                              text2: 'سلايدات فيزكال 3',
                              pathName: 'سلايدات د جمال '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: 'فيزكال 3',
                              text2: 'دفتر الدكتور جمال',
                              pathName: 'دفتر د جمال فيزكال 3'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: '',
                              text2: 'سلايدات فيزكال 3',
                              pathName: 'سلايدات فيزكال 3'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: '',
                              text2: 'تلخيص قوانين فيزكال 3',
                              pathName: 'تلخيص القوانين فيزكال 3'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: 'فيرست',
                              text2: 'تلخيص فيزكال 3',
                              pathName: 'تلخيص الفيررست '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: 'سكند',
                              text2: 'تلخيص فيزكال 3',
                              pathName: 'تلخيص سكند '),
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
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: '',
                              text2: 'جميع اسئلة سنوات فيزكال 3',
                              pathName: 'جميع السنوات '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: 'فيرست',
                              text2: 'سنوات فيزكال 3',
                              pathName: 'فيرست فيزكال 3'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: 'سكند',
                              text2: 'سنوات فيزكال 3',
                              pathName: 'سكند فيزكال 3'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: 'فاينل',
                              text2: 'سنوات فيزكال 3',
                              pathName: 'سنوات فاينل فيزكال 3'),
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
                          const Vizcal3Widget(
                              text1: 'فيزكال 3',
                              text3: 'للدكتور جمال',
                              text2: 'فيديوهات شرح فيزكال 3',
                              pathName: 'فيديوهات شرح فيزكال 3 د موسلى'),
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
