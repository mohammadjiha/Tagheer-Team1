import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tageer/admaneger/baneer_adds/banner6.dart';
import 'package:tageer/const/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../../../admaneger/baneer_adds/banner_adds.dart';
import '../widget/physucswidget.dart';

class Physics2 extends StatefulWidget {
  static const String RoutName = 'Physics2';

  const Physics2({super.key});

  @override
  State<Physics2> createState() => _Physics2State();
}

class _Physics2State extends State<Physics2> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection('Physics 2').snapshots();

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
                          const Physics2Widget(
                              text1: 'Physics 2',
                              text3: 'فيزياء 102',
                              text2: 'دوسية احمد عوض',
                              pathName: 'دوسية احمد عوض فيزيا'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Physics2Widget(
                              text1: 'Physics 2',
                              text3: 'الجزء الاول',
                              text2: 'دوسية الامال فيزياء 2',
                              pathName: 'دوسية الامال فيزياء 2 الجزء الاول'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Physics2Widget(
                              text1: 'Physics 2',
                              text3: 'الجزء الثاني',
                              text2: 'دوسية الامال فيزياء 2',
                              pathName: 'دوسية الامال فيزياء 102 الجزء القاني'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Physics2Widget(
                              text1: 'Physics 2',
                              text3: 'فيزياء 102',
                              text2: 'تلخيص القوانين',
                              pathName: 'فوانين فيزياء 2'),
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
                          const Physics2Widget(
                              text1: 'Physics 2',
                              text3: 'فيرست',
                              text2: 'سنوات فيزياء 2',
                              pathName: 'فيرست فيزياء 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Physics2Widget(
                              text1: 'Physics 2',
                              text3: 'سكند',
                              text2: 'سنوات فيزياء 2',
                              pathName: 'سكند فيزياء 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Physics2Widget(
                              text1: 'Physics 2',
                              text3: 'فاينل',
                              text2: 'سنوات فيزياء 2',
                              pathName: 'فاينل فيزياء 2'),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Physics2Widget(
                              text1: 'Physics 2',
                              text3: 'شاشات',
                              text2: 'سنوات فيزياء 2',
                              pathName: 'شاشات فيزياء 2'),
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
                          const Physics2Widget(
                              text1: 'Physics 2',
                              text3: '',
                              text2: 'لا يوجد',
                              pathName: 'دوسية احمد عوض فيزيا'),
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
