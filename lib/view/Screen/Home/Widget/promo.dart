import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Bromo extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;

  const Bromo(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 15.h,
          width: 45.w,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Color.fromRGBO(245, 246, 248, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontFamily: 'Rubik'),
                  ),
                  Text(
                    text2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: const Color.fromRGBO(77, 77, 77, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 2.w,
              ),
              Container(
                height: 8.h,
                width: 17.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(143, 202, 254, 1)),
                child: Image.asset(image),
              ),
            ],
          ),
        ),
        Container(
          height: 14.h,
          width: 45.w,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            color: Colors.white,
          ),
          child: Text(
            text3,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
