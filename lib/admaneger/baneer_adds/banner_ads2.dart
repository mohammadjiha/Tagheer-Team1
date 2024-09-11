import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';

// Controller للإعلان الأول
class BannerAdController1 extends GetxController {
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
      adUnitId: 'ca-app-pub-4204011704383089/4117968396', // معرف الوحدة الإعلانية للإعلان الأول
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

// Controller للإعلان الثاني
class BannerAdController2 extends GetxController {
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
      adUnitId: 'ca-app-pub-4204011704383089/4117968396', // معرف الوحدة الإعلانية للإعلان الثاني
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

// Widget لعرض الإعلان الأول
class BannerAds1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BannerAdController1 adController1 = Get.put(BannerAdController1());

    return Obx(() {
      return Container(
        child: adController1.isLoaded.value
            ? SizedBox(
          width: adController1.bannerAd!.size.width.toDouble(),
          height: adController1.bannerAd!.size.height.toDouble(),
          child: AdWidget(
            ad: adController1.bannerAd!,
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

// Widget لعرض الإعلان الثاني
class BannerAds2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BannerAdController2 adController2 = Get.put(BannerAdController2());

    return Obx(() {
      return Container(
        child: adController2.isLoaded.value
            ? SizedBox(
          width: adController2.bannerAd!.size.width.toDouble(),
          height: adController2.bannerAd!.size.height.toDouble(),
          child: AdWidget(
            ad: adController2.bannerAd!,
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
