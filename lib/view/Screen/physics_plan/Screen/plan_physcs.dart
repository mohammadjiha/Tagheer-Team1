import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';

import '../../../../admaneger/baneer_adds/banner_adds.dart';

class PlanPhysics extends StatefulWidget {
  static const String RoutName = 'PlanPhysics';

  const PlanPhysics({super.key});

  @override
  State<PlanPhysics> createState() => _PlanPhysicsState();
}

class _PlanPhysicsState extends State<PlanPhysics> {
  late String imageUrl;
  late String imageurl;

  @override
  void initState() {
    super.initState();
    imageUrl = 'assets/image/Untitled.jpg';
    imageurl = 'assets/image/Untitled (1).jpg';
  }

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
          Expanded(
              child: Container(
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
                        height: 5.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Hero(
                            tag: 'imageHero', child: Image.asset(imageUrl)),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Hero(
                            tag: 'imageHero', child: Image.asset(imageurl)),
                      ),
                      SizedBox(height: 1.h,),
                       BannerAds(),
                    ],
                  )))
        ],
      ),
    );
  }
}
