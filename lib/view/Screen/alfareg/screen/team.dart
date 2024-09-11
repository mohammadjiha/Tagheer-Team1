import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner_adds.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Home/Screen/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Team extends StatefulWidget {
  static const String RoutName = 'Team';

  Team({super.key});

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  int activeIndex = 0;
  final urlimage = [
    'assets/image/image 1.png',
    'assets/image/image 12.png',
    'assets/image/image 111.png'
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(54, 148, 235, 1),
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/image/ic_twotone-notifications-active.png'),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(102, 189, 255, 1),
                        borderRadius: BorderRadius.circular(25)),
                    height: 5.h,
                    width: 11.w,
                    child: Image.asset('assets/image/arrow_forward_ios.png'),
                  ),
                )
              ],
            ),
          ),
          Image.asset('assets/image/222.png'),
          
          Expanded(
              child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
              color: color.backgraound_Home,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 1.h,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'فريق التغيير',
                          style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 1.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromRGBO(102, 189, 255, 1)),
                          child: const Text(''),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 15.h,
                        child: Text(
                          'فريق طلابي تأسس سنة ٢٠١٢ بهدف مساعدة الطلاب في قسم الكيمياء، سواء على المستوى الأكاديمي من المراجعات أو على المستوى الترفيهي من الفعاليات  وتتجه البوصلة الآن لخدمة كلية العلوم بكافة أجزائها',
                          style:
                              TextStyle(color: Colors.black, fontSize: 13.sp),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 1.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromRGBO(102, 189, 255, 1)),
                          child: const Text(''),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CarouselSlider.builder(
                              itemCount: urlimage.length,
                              itemBuilder: (context, index, realIndex) {
                                final urlImage = urlimage[index];
                                return buildImage(urlImage, index);
                              },
                              options: CarouselOptions(
                                  height: 25.h,
                                  onPageChanged: (index, reason) =>
                                      setState(() => activeIndex = index))),
                          SizedBox(
                            height: 2.h,
                          ),
                          buildlndicator(),
                          SizedBox(
                            height: 2.h,
                          ),
                           BannerAds()
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget buildlndicator() => AnimatedSmoothIndicator(
        effect: const ExpandingDotsEffect(
            dotWidth: 15, activeDotColor: Colors.blue),
        count: urlimage.length,
        activeIndex: activeIndex,
      );
}

Widget buildImage(String urlImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      child: Image.asset(
        urlImage,
      ),
    );
