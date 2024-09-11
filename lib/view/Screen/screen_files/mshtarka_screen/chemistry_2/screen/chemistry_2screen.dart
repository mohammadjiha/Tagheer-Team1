import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner6.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/screen_files/mshtarka_screen/chemistry_2/screen/Widget/chem2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../admaneger/baneer_adds/banner_adds.dart';

class Chemistry2Screen extends StatefulWidget {
  static const String RoutName = 'Chemistry2Screen';

  const Chemistry2Screen({super.key});

  @override
  State<Chemistry2Screen> createState() => _Chemistry1ScreenState();
}

class _Chemistry1ScreenState extends State<Chemistry2Screen> {
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
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: "عمر جبر حلوة",
                            text2: "مفتاح الابداع",
                            pathName: "مفتاح الابداع",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: "تلخيص كيمياء2",
                            text2: "الدكتور سامر حمزة",
                            pathName: "تلخيص الدكتور سامر حمزة",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: "تلخيص كيمياء2 ",
                            text2: "دفتر(2015)",
                            pathName: "دفتر كيمياء 2 2016",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: "كتاب المادة",
                            text2: "Chemistry zumdah",
                            pathName: "كتاب المادة zumdahl",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: "من كتاب المادة",
                            text2: "Ch12",
                            pathName: "كتاب 2 ch12",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: "قوانين كيمياء2",
                            text2: "تلخيص",
                            pathName: "قوانين كيمياء 102",
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
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: " لكل شابتر بشكل منفصل",
                            text2: "سنوات كيمياء2",
                            pathName: "سنوات كيمياء102",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: "سنوات كيمياء2",
                            text2: "فاينل",
                            pathName: "سنوات كيمياء فاينل ",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: "سنوات كيمياء 2",
                            text2: "فيرست",
                            pathName: "سنوات كيمياء سكند 102",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: "سنوات كيمياء 2",
                            text2: "سكند",
                            pathName: "سنوات كيمياء 2 سكند",
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
                          const Chem2Widget(
                            text1: 'كيمياء 2',
                            text3: "ويتم الاعلان عنها باشعار",
                            text2: "في حال توافرها سوف يتم ارفاقها",
                            pathName: "مفتاح الابداع",
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
