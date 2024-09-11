import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Home/Widget/choic.dart';
import 'package:tageer/view/Screen/Home/Widget/promo.dart';
import 'package:tageer/view/Screen/Home/Widget/tanbeh.dart';
import 'package:tageer/view/Screen/Login&Register/Screen/start.dart';
import 'package:tageer/view/Screen/Student_plan/Screen/student_plan.dart';
import 'package:tageer/view/Screen/alfareg/screen/team.dart';
import 'package:tageer/view/Screen/gpi/gpi.dart';
import 'package:tageer/view/Screen/store/screen/store_screen.dart';
import 'package:tageer/view/Screen/taqweem/taqweem.dart';
import 'package:tageer/view/Screen/teachers_emails/screen/teachers_emails.dart';

import '../../../../admaneger/interstitalad/interstitalad.dart';
import '../../Choose your specialty/Screen/choose_specialty.dart';
import '../../shcawe/shcawe.dart';


class HomeScreen extends StatefulWidget {
  static const String RoutName = 'HomeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final InterstitialAdManager interstitialAdManager = InterstitialAdManager();
  int _currentIndex = 0;
  bool _isTanbeehShown = false;
  void _signOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isTanbeehShown', false); // إعادة تعيين حالة التنبيه عند تسجيل الخروج
    FirebaseAuth.instance.signOut();
    Get.offAllNamed(Start.RoutName);
  }

  @override
  @override
  void initState() {
    super.initState();
    interstitialAdManager.loadAd();
    _checkAndShowTanbeeh(); // التحقق من حالة التنبيه
  }

  void _checkAndShowTanbeeh() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isTanbeehShown = prefs.getBool('isTanbeehShown') ?? false;

    if (!isTanbeehShown) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Tanbeeh.showTanbeeh(context as BuildContext); // عرض التنبيه عند فتح الصفحة
      });
      await prefs.setBool('isTanbeehShown', true); // حفظ حالة التنبيه
    }
  }



  void _navigateToNextScreen() {
    interstitialAdManager.showAd(() {
      Get.to(() => GPACalculatorMultipleCoursesScreen());
    });
  }

  void _navigateToNextScreen2() {
    interstitialAdManager.showAd(() {
      Get.to(() => const ChooseSpecialty());
    });
  }

  void _navigateToNextScreen3() {
    interstitialAdManager.showAd(() {
      Get.to(() => const TeachersEmails());
    });
  }

  void _navigateToNextScreen4() {
    interstitialAdManager.showAd(() {
      Get.to(() => const Taqweem());
    });
  }

  void _navigateToNextScreen5() {
    interstitialAdManager.showAd(() {
      Get.to(() => const StudentPlan());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color.fromRGBO(54, 148, 235, 1),
      body: Column(
        children: [
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/image/ic_twotone-notifications-active.png'),
                GestureDetector(
                  onTap:_signOut
                  ,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(102, 189, 255, 1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    height: 4.h,
                    width: 25.w,
                    child: Text(
                      'تسجيل الخروج',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/image/222.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/image/0000.png'),
              Image.asset('assets/image/0000000-removebg-preview.png'),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  color: color.backgraound_Home,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Column(
                        children: [
                          SizedBox(height: 1.h),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              ':الخدمات',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Wrap(
                            spacing: 10.w,
                            runSpacing: 1.h,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Team.RoutName);
                                },
                                child: const Wrapp(
                                  image: 'assets/image/Group.png',
                                  Name: 'الفريق',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _navigateToNextScreen5();
                                },
                                child: const Wrapp(
                                  image: 'assets/image/icons8-plan-64 1.png',
                                  Name: 'خطة الطالب',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _navigateToNextScreen4();
                                },
                                child: const Wrapp(
                                  image: 'assets/image/Pay Date.png',
                                  Name: 'التقويم الجامعي',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _navigateToNextScreen3();
                                },
                                child: const Wrapp(
                                  image: 'assets/image/icons8-email-64 1.png',
                                  Name: 'ايملات المدرسين',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _navigateToNextScreen2();
                                },
                                child: const Wrapp(
                                  image: 'assets/image/icons8-archive-50 1.png',
                                  Name: 'ملفات',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _navigateToNextScreen();
                                },
                                child: const Wrapp(
                                  image: 'assets/image/icons8-math-50 1.png',
                                  Name: 'حساب المعدل',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Container(
                      height: 1.h,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(StoreScreen.RoutName);
                          },
                          child: const Bromo(
                            image: 'assets/image/Department Shop.png',
                            text1: 'متجر الفريق ',
                            text2: 'اطلب الان',
                            text3: 'احصل على دوسيتك الآن!',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(ScreenDev.RoutName);
                          },
                          child: const Bromo(
                            image: 'assets/image/icons8-customer-service-50 (1) 1.png',
                            text1: 'حسابات المطور',
                            text2: 'تواصل معنا',
                            text3: 'واجهتك أي مشكلة؟ نحن هنا للمساعدة',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20.sp,
        selectedFontSize: 10.sp,
        unselectedFontSize: 8.sp,
        selectedItemColor: color.backgraound_splash,
        unselectedItemColor: const Color.fromRGBO(119, 119, 119, 1),
        items: const [
          BottomNavigationBarItem(
            label: 'الصفحة الرئيسية',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "الاشعارات",
            icon: Icon(Icons.add_alert_outlined),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
