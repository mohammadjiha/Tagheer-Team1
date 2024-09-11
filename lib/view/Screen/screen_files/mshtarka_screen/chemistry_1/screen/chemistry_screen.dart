import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tageer/admaneger/baneer_adds/banner6.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/chemistry_1/screen/widget/chem1.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../admaneger/baneer_adds/banner_adds.dart';
import 'chemistry_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Chemistry1Screen extends StatefulWidget {
  static const String RoutName = 'Chemistry1Screen';

  @override
  State<Chemistry1Screen> createState() => _Chemistry1ScreenState();
}

class _Chemistry1ScreenState extends State<Chemistry1Screen> {
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
                          const ChemWidget(
                            text1: 'كيمياء عامة 1',
                            text2: 'CHEMISTRY كتاب',
                            text3: 'Raymond Chang',
                            pathName: 'bookRaymondChang',
                            NameCollectin: ' fileUrl ',
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ChemWidget(
                            text1: 'كيمياء عامة 1',
                            text2: 'حلول الكتاب ',
                            text3: 'Raymond Chang',
                            pathName: 'soultionbook',
                            NameCollectin: ' fileUrl ',
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ChemWidget(
                            text1: 'كيمياء عامة 1',
                            text2: 'تلخيص: سنابل سلمان',
                            text3: 'للدكتورة لبنى رواشدة',
                            pathName: 'chem1',
                            NameCollectin: ' fileUrl ',
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ChemWidget(
                            text1: 'كيمياء عامة 1',
                            text2: 'تلخيص: سارة ',
                            text3: 'للدكتورة محمود سنجق',
                            pathName: 'sara_DrSunjuk',
                            NameCollectin: ' fileUrl ',
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ChemWidget(
                            text1: 'كيمياء عامة 1',
                            text2: 'مفتاح الابداع',
                            text3: 'الأستاذ عمر جبر حلوة',
                            pathName: 'مفتاح الابداع كيمياء 1',
                            NameCollectin: ' fileUrl ',
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ChemWidget(
                            text1: 'كيمياء عامة 1',
                            text2: 'سلايدات المادة ',
                            text3: 'سلايدات المادة',
                            pathName: 'سلايدات المادة',
                            NameCollectin: ' fileUrl ',
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
                          const ChemWidget(
                            text1: 'كيمياء عامة 1',
                            text2: 'سنوات فيرست',
                            text3: '',
                            pathName: 'فيرست كيمياء 101',
                            NameCollectin: ' fileUrl ',
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ChemWidget(
                            text1: 'كيمياء عامة 1',
                            text2: 'سنوات سكند ',
                            text3: '',
                            pathName: 'كيمياء سكند',
                            NameCollectin: ' fileUrl ',
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const ChemWidget(
                            text1: 'كيمياء عامة 1',
                            text2: 'سنوات فاينل',
                            text3: '',
                            pathName: 'فاينل كيمياء 101',
                            NameCollectin: ' fileUrl ',
                          ),
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
                          const ChemWidget(
                            text1: 'كيمياء عامة 1',
                            text2: 'شرح كيمياء 101',
                            text3: 'للطالب سميح عميرة',
                            pathName: 'شروحات كيمياء 1',
                            NameCollectin: ' fileUrl ',
                          ),
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
