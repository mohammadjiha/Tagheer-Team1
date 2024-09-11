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

class TeachersNamesPhysics extends StatelessWidget {
  static const String RoutName = 'TeachersNamesPhysics';

  const TeachersNamesPhysics({super.key});

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
                          buildTeacherItem(context, 'ميسم ابو دلو', 'ma.abodallo@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'الاء ابو دلو', 'Ala@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'رانيا شقبوعة', 'Rania.Shaqboua@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'سعود السعدي', 'Saud@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'مصطفى ابو شاويش', 'mabushawiesh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'تقي الشطناوي', 'taqi_shatnawi@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'فراس بني حمد', 'fbaniahmad@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'صلاح العداسي', 'salah@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'محمد المومني', 'mh_momani@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'ابراهيم ابو فلاحه', 'iabufalahah@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'حاتم مقدادي', 'HatimS@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'احمد عدوي', 'adawi@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'محمد سرسك', 'sarsak@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'عمر حرزالله', 'o.hirzal@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'امير جبر', 'ameerj@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'حلمي كتانة', 'kittanih@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'زياد مصطفى', 'zmagablh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'حامد عبيدات', 'hobiedat@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'فادي عواودة', 'awawdeh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'محمد صافي', 'masafi@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'عبدالله شحادة', 'AbdallahA_Ka@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'بشير هديبات', 'b.alhdaibat@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'نضال طاهات', 'Nedal@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'عادل احمد عبد الحافظ شاهين', 'adel_shaheen@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'جمال شحاده حماد الجندي', 'jaj@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'وائل ناجي محمد صلاح', 'wsalah@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'رشاد ابراهيم بدوي بدران', 'rbadran@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'محمد خالد موسى الصغير', 'msugh@staff.HU.EDU.JO'),
                          buildTeacherItem(context, 'صالح محمد سليمان العمرى', 'salomar@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'فراس رمضان احمد عفانه', 'afaneh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'زياد يوسف احمد خطاري', 'zkhattari@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'مفيد محمود حسين المغربي', 'muf.mug@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'شرحبيل صالح محمد اليونس', 'salyones@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'عبد الخالق موسى الصالح الصمادى', 'alsmadi@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'صفيه محمود سعد حماشا', 'safeia@staff.HU.EDU.JO'),
                          buildTeacherItem(context, 'اكرم كامل سعيد العقيلي', 'akramaq@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'غسان علي محمد النعواشي', 'alnawashi@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'طارق عبد الحميد عبد المعطي العبد الله', 'abdullatq@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'معاذ غازي سلامه شطناوي', 'shatnawi@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'فراس محمد عقله الدويري', 'faldweri@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'قاسم محمد مصطفى الزعبي', 'Gassem@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'سفيان محمد حسين النمرات', 'smalnemrat@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'نبيل محمد سليمان الاقطش', 'NabilD@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'انس يوسف نمر الرياحي', 'anasy@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'اياد خلف عوض الهقيش', 'IyadK@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'غاده احمد ابراهيم السيد', 'ghadaa@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'منار مصطفى سالم العبيد', 'manarm@staff.hu.edu.jo'),
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
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.copy),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: email));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Email copied to clipboard')),
              );
            },
          ),
          Spacer(),
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
