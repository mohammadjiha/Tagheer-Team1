import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';

class BannerAdController extends GetxController {
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
      adUnitId: 'ca-app-pub-4204011704383089/1913642737', // استبدل معرف الوحدة الإعلانية
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

class BannerAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // استدعاء Controller
    final BannerAdController adController = Get.put(BannerAdController());

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
