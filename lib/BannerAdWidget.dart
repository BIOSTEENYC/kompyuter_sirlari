import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key});

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;
  @override
  void initState() {
    super.initState();
    _bannerAd = BannerAd(adUnitId: "ca-app-pub-8603698708546750/2725798008",size: AdSize.banner, request: AdRequest(),listener: BannerAdListener(onAdLoaded: (Ad ad){
      setState(() {
        _isAdLoaded = true;
      });
    },
      onAdFailedToLoad: (Ad ad, LoadAdError error){
      ad.dispose();
      },
    ),
    );
    _bannerAd.load();
  }
  @override
  void dispose(){
    _bannerAd.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return _isAdLoaded ? Container(
      alignment: Alignment.bottomCenter,
      child: AdWidget(ad: _bannerAd),
      width: _bannerAd.size.width.toDouble(),
      height: _bannerAd.size.height.toDouble(),
    ) : SizedBox.shrink();
  }
}
