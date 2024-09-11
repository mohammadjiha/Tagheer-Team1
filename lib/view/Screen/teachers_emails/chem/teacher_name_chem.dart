import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/teachers_emails/widget/teachers_name.dart';
import '../../../../admaneger/baneer_adds/banner6.dart';
import '../../../../admaneger/baneer_adds/banner7.dart';
import '../../../../admaneger/baneer_adds/banner_adds.dart';
import '../../Home/Screen/home_screen.dart';

class TeachersNamesChem extends StatelessWidget {
  static const String RoutName = 'TeachersNamesChem';

  const TeachersNamesChem({super.key});

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
                          buildTeacherItem(context, 'جعفر ابراهيم محمد عبد الغني', 'j.abdelghani@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'حمزه محمد عبد الجابر عبد الحليم', 'hamzehah@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'عدنان محمود سليم ابو صره', 'asurrah@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'موسى ابراهيم موسى البرغوثي', 'musab@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'كايد عبد الفتاح زبن ابو صفيه', 'kayedas@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'امجد حسين محمد الشيخ', 'elsheikh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'موسى زعل قاسم النعيمي', 'manoaimi@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'ايمن عبد الله عبد الكريم عيسى', 'aymani@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'جمال نمر عيد داود', 'jamaldawoud@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'بدر عبد الرحيم بدر سلامه', 'bader@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'محمود شاكر احمد سنجق', 'mahmoud.sunjuk@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'لؤى احمد طعمه المومني', 'Loay.Al-Momani@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'اسماعيل عيسى محمد الفسفوس', 'ismailf@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'عبد الله ابراهيم يوسف صالح', 'a-saleh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'علاء فخري احمد زكي افتيحه', 'alaa.eftaiha@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'علي عيسى يوسف اسماعيل', 'ali.ismail@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'اياد احمد محمد يونس', 'e.younes@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'لبنى رياض محمد الرواشده', 'lubna.reyad@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'ماجد حمد محمد شتيوي', 'MajedH@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'نايف حسن مسلم الجعار', 'nayyef@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'زاهر عبد القادر احمد الغرايبه', 'ZaherA@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'هاجم فوزي توفيق بطاينه', 'Hajem@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'عاكف ابراهيم سلامه الحميديين', 'AkefI@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'فداء موسى عبد الحميد القيسي', 'FedaaM@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'سوسن محمد احمد جعافره', 'sawsan.jaafreh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'حسن عيسى حسن ابو الفتوح', 'h.abulfutouh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'سامر منير حسن حمزه', 'samzh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'ندى احمد حسين الساخن', 'nada-alsakhen@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'ايناس نبيه اكريم محمود', 'enas@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'منال حسن محمود البزور', 'manalh@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'براءه احمد عيسى عطاالله', 'baraaa@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'ياسمين رباح حسن الحاج صالح', 'yasminr@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'فاديه محمد اديب اجباره', 'fadiam_ad@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'الاء محمود علي الخطيب', 'Alaa_m@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'باسم رشيد محمد نصر الله', 'basem-r@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'حسين موسى حسين غنام', 'husseinm@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'رنا سميح محمد بكر', 'rana@staff.hu.edu.jo'),
                          buildTeacherItem(context, 'عبير محمد علي الخطيب', 'abeerkh@staff.hu.edu.jo'),
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
