import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Wrapp extends StatelessWidget {
  final String image;
  final String Name;

  const Wrapp({super.key, required this.image, required this.Name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 10.h,
            width: 20.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Image.asset(image)),
        SizedBox(
          height: 1.h,
        ),
        Text(
          Name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10.sp,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
