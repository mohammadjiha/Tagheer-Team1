import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:url_launcher/url_launcher.dart';

class AstronomyWidget extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final String
      pathName; // افتراضي أن pathName هو اسم الحقل الذي تريد الوصول إليه

  const AstronomyWidget({
    super.key,
    required this.text1,
    required this.text3,
    required this.text2,
    required this.pathName,
  });

  @override
  State<AstronomyWidget> createState() => _AstronomyWidgetState();
}

class _AstronomyWidgetState extends State<AstronomyWidget> {
  final Stream<QuerySnapshot> datapdfStrem =
      FirebaseFirestore.instance.collection("Astronomy").snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: datapdfStrem,
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Loading...');
          }

          List<String> fileUrls = snapshot.data!.docs
              .map((doc) => doc[widget.pathName] as String)
              .toList();

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: color.backgraound_splash,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                height: 10.h,
                width: 85.w,
                child: Text(
                  widget.text1,
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    color: const Color.fromRGBO(54, 148, 235, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                height: 15.h,
                width: 85.w,
                child: Column(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      widget.text2,
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      widget.text3,
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    for (var url in fileUrls)
                      GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse(url));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 6.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            color: color.backgraound_splash,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            'تحميل الملف',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
