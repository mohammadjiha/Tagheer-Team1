import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../../../admaneger/baneer_adds/banner6.dart';
import '../../../../screen/Second year subjects/inorganic1/widget/inorganic1_widget.dart';
import '../widget/inorganic2_widget.dart';

class InOrganic2 extends StatefulWidget {
  static const String RoutName = 'InOrganic2';

  const InOrganic2({super.key});

  @override
  State<InOrganic2> createState() => _InOrganic2State();
}

class _InOrganic2State extends State<InOrganic2> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection(" Inorganic 2").snapshots();

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
                          const InOrganic2Widget(
                              text1: 'غير عضوية 2',
                              text3: 'Inorganic Chemistry',
                              text2: 'كتاب المادة',
                              pathName: 'كتاب المادة '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const InOrganic2Widget(
                              text1: 'غير عضوية 2',
                              text3: 'غير عضوية 2',
                              text2: 'سلايدات دكتور موسى نعيمي',
                              pathName: 'سلايدات د موسى نعيمي'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const InOrganic2Widget(
                              text1: 'غير عضوية 2',
                              text3: 'غير عضوية 2',
                              text2: 'سلايدات دكتور هاجم',
                              pathName: 'سلايدات د هاجم ان 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const InOrganic2Widget(
                              text1: 'غير عضوية 2',
                              text3: 'غير عضوية 2',
                              text2: ' تلخيص رنين الرمحي',
                              pathName: 'تلخيص رنين الرمحي ان 2 '),
                          SizedBox(
                            width: 5.w,
                          ),
                          const InOrganic2Widget(
                              text1: 'غير عضوية 2',
                              text3: 'للطالبة بيان',
                              text2: 'شرح شابتر 20',
                              pathName: 'شرح شابتر 20'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const InOrganic2Widget(
                              text1: 'غير عضوية 2',
                              text3: 'غير عضوية 2',
                              text2: 'How to use tanabe sugano',
                              pathName: 'How to use tanabe sugano'),
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
                          const InOrganic2Widget(
                              text1: 'غير عضوية 2',
                              text3: 'فيرست',
                              text2: 'سنوات غير عضوية 2',
                              pathName: 'سنوات فيرسن ان 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const InOrganic2Widget(
                              text1: 'غير عضوية 2',
                              text3: 'سكند',
                              text2: 'سنوات غير عضوية 2',
                              pathName: 'سنوات سكند ان 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const InOrganic2Widget(
                              text1: 'غير عضوية 2',
                              text3: 'فاينل',
                              text2: 'سنوات غير عضوية 2',
                              pathName: 'سنوات فاينل ان 2'),
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
                          const InOrganic2Widget(
                              text1: "غير عضوية 2",
                              text3: "للدكتور موسى النعيمي",
                              text2: " فيديوهات شرح غير عضوية 2",
                              pathName: "فيديوهات د موسى نعيمي "),
                          SizedBox(
                            width: 5.w,
                          ),
                          const InOrganic2Widget(
                              text1: "غير عضوية 2",
                              text3: "للدكتور هاجم",
                              text2: " فيديوهات شرح غير عضوية 2",
                              pathName: "فيديوهات شرح د هاجم"),
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
