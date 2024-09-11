import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';
import 'package:tageer/view/Screen/store/widget/store_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../admaneger/baneer_adds/banner_adds.dart';
import '../../Home/Screen/home_screen.dart';

class StoreScreen extends StatelessWidget {
  static const String RoutName = 'StoreScreen';

  Future<void> _openWebPage(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  // Function to fetch URL from Firestore
  Future<String?> _fetchUrlFromFirestore(String docId) async {
    try {
      DocumentSnapshot document = await FirebaseFirestore.instance
          .collection('webLinks')
          .doc('V2BcmiY4pXpdl3aCfcaf')
          .get();

      if (document.exists) {
        return document.get(docId); // الحقل الذي يحتوي على الرابط
      } else {
        print('Document does not exist');
        return null;
      }
    } catch (e) {
      print('Error fetching URL: $e');
      return null;
    }
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
                  'متجر الفريق',
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
                  onTap: () {
                    Get.back();
                  },
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
                      topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                  color: color.backgraound_Home,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          GestureDetector(
                            onTap: () async {
                              String? url = await _fetchUrlFromFirestore("yourDocumentId");
                              if (url != null) {
                                _openWebPage(url);
                              } else {
                                print('URL not found');
                              }
                            },
                            child: const StoreWidget(
                              Text11: 'قسم الكيمياء',
                              Text12: 'الطلب مباشرة عبر حساب القسم انقر للتواصل',
                              ImageName: 'image-removebg-preview (2).png',
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          GestureDetector(
                            onTap: () async {
                              String? url = await _fetchUrlFromFirestore("قسم الفيزياء");
                              if (url != null) {
                                _openWebPage(url);
                              } else {
                                print('URL not found');
                              }
                            },
                            child: const StoreWidget(
                              Text11: 'قسم الفيزياء',
                              Text12: 'الطلب مباشرة عبر حساب القسم انقر للتواصل',
                              ImageName: 'image-removebg-preview (1).png',
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          GestureDetector(
                            onTap: () async {
                              String? url = await _fetchUrlFromFirestore("فريق الاتحاد رياضيات");
                              if (url != null) {
                                _openWebPage(url);
                              } else {
                                print('URL not found');
                              }
                            },
                            child: const StoreWidget(
                              Text11: 'قسم الرياضيات',
                              Text12: 'الطلب مباشرة عبر حساب القسم انقر للتواصل',
                              ImageName: 'image-removebg-preview.png',
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          GestureDetector(
                            onTap: () async {
                              String? url = await _fetchUrlFromFirestore("فريق الاتحاد رياضيات");
                              if (url != null) {
                                _openWebPage(url);
                              } else {
                                print('URL not found');
                              }
                            },
                            child: const StoreWidget(
                              Text11: 'قسم الأحياء',
                              Text12: 'الطلب مباشرة عبر حساب القسم انقر للتواصل',
                              ImageName: 'image-removebg-preview (3).png',
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                           BannerAds(),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
