import 'package:google_mobile_ads/google_mobile_ads.dart';

class InterstitialAdManager {
  InterstitialAd? _interstitialAd;
  bool _isAdLoaded = false;

  // معرف وحدة الإعلان البيني
  final String adUnitId = 'ca-app-pub-4204011704383089/6249085949'; // استبدل معرف الوحدة الإعلانية الخاصة بك

  // تحميل الإعلان البيني
  void loadAd() {
    InterstitialAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _isAdLoaded = true;
        },
        onAdFailedToLoad: (error) {
          print('Failed to load an interstitial ad: $error');
        },
      ),
    );
  }

  // عرض الإعلان البيني عند النقر
  void showAd(Function onAdClosed) {
    if (_isAdLoaded && _interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          _interstitialAd!.dispose();
          _interstitialAd = null;
          _isAdLoaded = false;
          loadAd(); // تحميل إعلان جديد بعد إغلاق الإعلان الحالي
          onAdClosed(); // الانتقال إلى الشاشة بعد إغلاق الإعلان
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          _interstitialAd!.dispose();
          _interstitialAd = null;
          _isAdLoaded = false;
          print('Failed to show interstitial ad: $error');
          loadAd(); // تحميل إعلان جديد عند الفشل في عرض الإعلان الحالي
          onAdClosed(); // الانتقال إلى الشاشة حتى في حال الفشل
        },
      );
      _interstitialAd!.show();
    } else {
      // إذا لم يتم تحميل الإعلان، انتقل إلى الشاشة مباشرة
      onAdClosed();
    }
  }
}