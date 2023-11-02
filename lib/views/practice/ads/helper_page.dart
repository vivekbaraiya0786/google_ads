import 'package:google_mobile_ads/google_mobile_ads.dart';

class Ads_Helper {
  Ads_Helper._();

  static final Ads_Helper ads_helper = Ads_Helper._();

  var adunitId = "ca-app-pub-3940256099942544/6300978111";

  BannerAd? bannerAd;

  loadBannerAd() {
    bannerAd = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: adunitId,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          bannerAd = ad as BannerAd?;
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    )..load();
  }

  InterstitialAd? interstitialAd;
  var IAd = "ca-app-pub-3940256099942544/8691691433";

  loadinterstialAd() {
    InterstitialAd.load(
        adUnitId: IAd,
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            interstitialAd = ad;
          },
          onAdFailedToLoad: (error) {},
        ));
  }

  RewardedAd? rewardedAd;
  var rewardIfd = "ca-app-pub-3940256099942544/5224354917";

  loadreawardAd() {
    RewardedAd.load(
      adUnitId: rewardIfd,
      request: AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          rewardedAd = ad;
        },
        onAdFailedToLoad: (error) {},
      ),
    );
  }

  AppOpenAd? appOpenAd;
  var openAd = "ca-app-pub-3940256099942544/3419835294";

  loadAppOpenAdd() {
    AppOpenAd.load(
        adUnitId: openAd,
        request: AdRequest(),
        adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad) {
            appOpenAd = ad;
          },
          onAdFailedToLoad: (error) {

          },
        ),
        orientation: AppOpenAd.orientationPortrait);
  }

  RewardedInterstitialAd? rewardedInterstitialAd;
  var rewardadunitId = "ca-app-pub-3940256099942544/5354046379";
  loadRewardInterstitialAd() {

    RewardedInterstitialAd.load(
        adUnitId: rewardadunitId,
        request: AdRequest(),
        rewardedInterstitialAdLoadCallback: RewardedInterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            rewardedInterstitialAd = ad;
          },
          onAdFailedToLoad: (error) {},
        ));
  }
}
