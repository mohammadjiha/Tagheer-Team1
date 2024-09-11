import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';

class ChiocStudent extends StatelessWidget {
  final String images;
  final String Text11;
  final String Text12;

  const ChiocStudent({
    super.key,
    required this.images,
    required this.Text11,
    required this.Text12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      height: 10.h,
      width: 90.w,
      child: Row(
        children: [
          const Spacer(
            flex: 1,
          ),
          Image.asset('assets/image/icon.png'),
          const Spacer(
            flex: 4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Text11,
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                Text12,
                style: TextStyle(fontSize: 10.sp, color: Colors.black),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            height: 8.h,
            width: 17.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color.backgraound_splash,
            ),
            child: Image.asset(images),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
