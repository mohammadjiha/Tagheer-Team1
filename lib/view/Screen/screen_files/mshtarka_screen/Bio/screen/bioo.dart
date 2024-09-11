import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tageer/admaneger/baneer_adds/banner6.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/chemistry_1/screen/widget/chem1.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/chemistry_2/screen/Widget/chem2.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/lap_chem105/Widget/lapchem105.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner_adds.dart';
import '../widget/biowidget.dart';
import '../widget/biowidget.dart';

class Bio1 extends StatefulWidget {
  static const String RoutName = 'Bio1';

  const Bio1({super.key});

  @override
  State<Bio1> createState() => _Bio1State();
}

class _Bio1State extends State<Bio1> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection('Bio101').snapshots();

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
                          const Bio1Widget(
                              text1: 'Bio 1',
                              text3: 'للطالبة سالي مسلم',
                              text2: 'ِشرح الامال',
                              pathName: 'شرح الامال للطالبة سالي مسلم'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Bio1Widget(
                              text1: 'Bio 1',
                              text3: '',
                              text2: 'ِشرح الدكتور نبيل',
                              pathName: 'ملخصات الدكتور نبيل'),
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
                          const Bio1Widget(
                              text1: 'Bio 1',
                              text3: '',
                              text2: 'ِسنوات بيو1',
                              pathName: 'سنوات بيو1'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Bio1Widget(
                              text1: 'Bio 1',
                              text3: '',
                              text2: 'نموذج سنكد بيو1',
                              pathName: 'نموذج بيو1 سكند'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Bio1Widget(
                              text1: 'Bio 1',
                              text3: '',
                              text2: 'ِنموذج فاينل بيو1',
                              pathName: 'نموذج بيو1 فاينل'),
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
                          const Bio1Widget(
                              text1: 'Bio 1',
                              text3: 'للطالبة سالي مسلم',
                              text2: 'فيديوهات شرح بيو1',
                              pathName: 'شرح الامال للطالبة سالي مسلم'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Bio1Widget(
                              text1: 'Bio 1',
                              text3: 'للنادي الطبي',
                              text2: 'فيديوهات شرح بيو1',
                              pathName: 'فيديوهات شرح للنادي لطبي'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Bio1Widget(
                              text1: 'Bio 1',
                              text3: '',
                              text2: 'ِنموذج فاينل بيو1',
                              pathName: 'نموذج بيو1 فاينل'),
                          SizedBox(
                            width: 5.w,
                          )
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
