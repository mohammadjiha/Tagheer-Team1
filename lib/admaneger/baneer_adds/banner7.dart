import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';

class BannerAdController7 extends GetxController {
  BannerAd? bannerAd;
  var isLoaded = false.obs;

  @override
  void onInit() {
    loadAd();
    super.onInit();
  }

  void loadAd() {
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-4204011704383089/9918225453', // استبدل معرف الوحدة الإعلانية
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          isLoaded.value = true;
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
      request: const AdRequest(),
    )..load();
  }

  @override
  void onClose() {
    if (isLoaded.value) {
      bannerAd?.dispose();
    }
    super.onClose();
  }
}

class BannerAds7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // استدعاء Controller
    final BannerAdController7 adController = Get.put(BannerAdController7());

    return Obx(() {
      return Container(
        child: adController.isLoaded.value
            ? SizedBox(
          width: adController.bannerAd!.size.width.toDouble(),
          height: adController.bannerAd!.size.height.toDouble(),
          child: AdWidget(
            ad: adController.bannerAd!,
          ),
        )
            : SizedBox(
          child: Text(
            'Loading...',
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
      );
    });
  }
}