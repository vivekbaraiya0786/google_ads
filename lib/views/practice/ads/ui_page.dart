import 'package:flutter/material.dart';
import 'package:flutter_pratice/views/practice/ads/helper_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ads_page extends StatefulWidget {
  const ads_page({super.key});

  @override
  State<ads_page> createState() => _ads_pageState();
}

class _ads_pageState extends State<ads_page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Ads_Helper.ads_helper.loadBannerAd();
    Ads_Helper.ads_helper.loadinterstialAd();
    Ads_Helper.ads_helper.loadreawardAd();
    Ads_Helper.ads_helper.loadAppOpenAdd();
    Ads_Helper.ads_helper.loadRewardInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Ads"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  if (Ads_Helper.ads_helper.interstitialAd != null) {
                    Ads_Helper.ads_helper.interstitialAd!.show();
                    Ads_Helper.ads_helper.loadinterstialAd();
                  }
                },
                child: Text("Show interstialAd")),
            ElevatedButton(onPressed: () {}, child: Text("Show Reward ad")),
            ElevatedButton(onPressed: () {}, child: Text("Show AppOpenAdd")),
            ElevatedButton(
                onPressed: () {
                  if (Ads_Helper.ads_helper.interstitialAd != null) {
                    Ads_Helper.ads_helper.rewardedInterstitialAd?.show(onUserEarnedReward: (ad, reward) {
                      print("Sucefully load");
                    },);
                    Ads_Helper.ads_helper.loadRewardInterstitialAd();
                  }
                },
                child: Text("Show RewardInterstitialAd")),
            SizedBox(
              height: 400,
              child: Container(
                color: Colors.red,
                height: 100,
                child: AdWidget(ad: Ads_Helper.ads_helper.bannerAd!),
              ),
            )
          ],
        ),
      ),
    );
  }
}
