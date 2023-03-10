// Below commented blocks are for google ads

import 'package:flutter/material.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';
//import 'package:preschoolers_app/ad_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preschoolers',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // BannerAd? _bannerAd;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   // Call _initGoogleMobileAds() to initialize the Google Mobile Ads SDK
  //   _initGoogleMobileAds();
  //   BannerAd(
  //     adUnitId: AdHelper.bannerAdUnitId,
  //     request: AdRequest(),
  //     size: AdSize.banner,
  //     listener: BannerAdListener(
  //       onAdLoaded: (ad) {
  //         setState(() {
  //           _bannerAd = ad as BannerAd;
  //         });
  //       },
  //       onAdFailedToLoad: (ad, err) {
  //         print('Failed to load a banner ad: ${err.message}');
  //         ad.dispose();
  //       },
  //     ),
  //   ).load();
  // }
  //
  // Future<InitializationStatus> _initGoogleMobileAds() {
  //   // Initialize the Google Mobile Ads SDK
  //   return MobileAds.instance.initialize();
  // }
  // @override
  // void dispose() {
  //   _bannerAd?.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preschoolers"),
      ),
      body: Column(
        children: [
          Container(
              height: 200,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20), color: Colors.grey),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/image_6.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20), color: Colors.grey),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/image_5.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20), color: Colors.grey),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/image_4.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20), color: Colors.grey),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/image_3.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                ),



                // if (_bannerAd != null)
                //   Align(
                //     alignment: Alignment.topCenter,
                //     child: Container(
                //       width: _bannerAd!.size.width.toDouble(),
                //       height: _bannerAd!.size.height.toDouble(),
                //       child: AdWidget(ad: _bannerAd!),
                //     ),
                //   )


              ])),
          Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ),
                ],
              ))

        ],
      ),
    );
  }
}
