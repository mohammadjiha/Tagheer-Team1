import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class BoxBoth extends StatelessWidget {
  final String ImageName;

  const BoxBoth({super.key, required this.ImageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(244, 244, 244, 1)),
      height: 5.h,
      width: 15.w,
      child: Image.asset(ImageName),
    );
  }
}
