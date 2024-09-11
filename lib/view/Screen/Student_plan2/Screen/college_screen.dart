import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/Student_plan2/widget/college_joint.dart';

import '../../../../admaneger/baneer_adds/banner_adds.dart';


class CollegeJointScreen extends StatelessWidget {
  static const String RoutName = 'CollegeJointScreen';

  const CollegeJointScreen({super.key});

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
                  'المواد المشتركة',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const CollegeJoint(text: 'Physics 1'),
                              SizedBox(
                                height: 1.h,
                              ),
                              const CollegeJoint(text: 'Physics 2'),
                              SizedBox(
                                height: 1.h,
                              ),
                              const CollegeJoint(text: 'C++'),
                              SizedBox(
                                height: 1.h,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const CollegeJoint(text: 'كالك 1'),
                              SizedBox(
                                height: 1.h,
                              ),
                              const CollegeJoint(text: 'كالك 2'),
                              SizedBox(
                                height: 1.h,
                              ),
                              const CollegeJoint(text: 'ديف 1'),
                              SizedBox(
                                height: 1.h,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const CollegeJoint(text: 'كمياء 1'),
                              SizedBox(
                                height: 1.h,
                              ),
                              const CollegeJoint(text: 'كيمياء 2'),
                              SizedBox(
                                height: 1.h,
                              ),
                              const CollegeJoint(text: 'لاب كيمياء'),
                              SizedBox(
                                height: 1.h,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CollegeJoint(text: 'Bio'),
                        ],
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
