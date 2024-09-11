import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';

class CollegeJoint extends StatelessWidget {
  final String text;

  const CollegeJoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 5.h,
      width: 30.w,
      decoration: BoxDecoration(
          color: color.backgraound_splash,
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 15.sp, fontWeight: FontWeight.bold, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
