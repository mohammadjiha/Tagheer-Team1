import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import '../../../../admaneger/baneer_adds/banner6.dart';
import '../../../../admaneger/baneer_adds/banner7.dart';
import '../../../../admaneger/baneer_adds/banner_adds.dart';
import '../../Home/Screen/home_screen.dart';

class TeachersNamesBio extends StatelessWidget {
  static const String RoutName = 'TeachersNamesBio';

  const TeachersNamesBio({super.key});

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
                  'ايميلات المدرسين',
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
                  onTap: () {
                    Get.back();
                  },
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
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                color: color.backgraound_Home,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 1.h,
                          ),
                          BannerAds7(),
                          SizedBox(
                            height: 1.h,
                          ),
                          buildTeacherItem(context, 'مس يسرى بسيسو', 'yousrab@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'مس نسرين نجيب', 'nissreenn@stff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتور محمد وديان', 'nmwedyan@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'استاذ علي الكرمي', 'karmi@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'استاذ خالد صالح', 'khaledm_mo@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتور خالد ابو التين', 'salma@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'مس حنان العبيد', 'HananM@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'مس اية المصري', 'ayay@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتورة صبا شبيلات', 'seba.shbailat@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتور سالم الملول', 'SalemR@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتور مهند مساعدة', 'massadeh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتورة لبنى التهتموني', 'lubnatahtamuni@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتور عصام قنيص', 'Esamqn@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتورة عبير فريج', 'afraij@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتور عبداللطيف غزاوي', 'ghzawi@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتورة رنا الدجاني', 'rdajani@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتورة رجاء عيده', 'raj@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'دكتورة بيان ابو غزاله', 'bayan@staff.hu.edu.jo'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildTeacherItem(BuildContext context, String name, String email) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(143, 202, 254, 1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.copy),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: email));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Email copied to clipboard')),
              );
            },
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                email,
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
