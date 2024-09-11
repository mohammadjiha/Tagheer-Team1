import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';

class TeachersEmailsWidget extends StatelessWidget {
  final String Text11;
  final String Text12;

  const TeachersEmailsWidget({
    super.key,
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
            flex: 10,
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
              color: const Color.fromRGBO(143, 202, 254, 1),
            ),
            child: Image.asset('assets/image/envelope1.png'),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
