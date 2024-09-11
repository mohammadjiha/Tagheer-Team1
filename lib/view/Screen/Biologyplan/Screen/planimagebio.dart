import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:tageer/admaneger/baneer_adds/banner6.dart';
import 'package:tageer/const/color.dart';

import '../../../../admaneger/baneer_adds/banner3.dart';
import '../../../../admaneger/baneer_adds/banner5.dart';
import '../../../../admaneger/baneer_adds/banner7.dart';
import '../../../../admaneger/baneer_adds/banner_adds.dart';
import '../../../../admaneger/baneer_adds/banner_ads2.dart';

class PlanBioImage extends StatefulWidget {
  static const String RoutName = 'PlanBioImage';

  const PlanBioImage({super.key});

  @override
  State<PlanBioImage> createState() => _PlanBioImageState();
}

class _PlanBioImageState extends State<PlanBioImage> {
  late String imageUrl;
  late String imageurl;
  late String imageurl1;
  late String imageurl2;

  @override
  void initState() {
    super.initState();
    imageUrl = 'assets/image/20221002_211506_0006.png';
    imageurl = 'assets/image/Untitled (2).jpg';
    imageurl1 = 'assets/image/20221002_211506_0008.png';
    imageurl2 = 'assets/image/Untitled (3).jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.backgraound_splash,
      body: SingleChildScrollView(
        child: Column(
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
                    'الخطة الشجرية',
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
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                color: color.backgraound_Home,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Hero(tag: 'imageHero', child: Image.asset(imageUrl)),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                   BannerAds2(),
                  SizedBox(
                    height: 3.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Hero(tag: 'imageHero', child: Image.asset(imageurl)),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child:
                        Hero(tag: 'imageHero', child: Image.asset(imageurl1)),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  BannerAds5(),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child:
                        Hero(tag: 'imageHero', child: Image.asset(imageurl2)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                   BannerAds6(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
