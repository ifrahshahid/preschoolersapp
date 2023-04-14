// Below commented blocks are for google ads

import 'package:flutter/material.dart';
import 'EnglishAlphabetsImage.dart';
import 'EnglishNumbersImage.dart';
import 'UrduAlphabetsImage.dart';
import 'UrduNumbersImage.dart';

//import 'package:google_mobile_ads/google_mobile_ads.dart';
//import 'package:preschoolers_app/ad_helper.dart';


void main() {
  runApp(MyApp());
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
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 280,
                child: ListView(scrollDirection: Axis.horizontal, children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EnglishAlphabetsImage(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.21, // 21% of device width
                        height: MediaQuery.of(context).size.width * 0.28, // 28% of device
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/home/english_alphabets.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EnglishNumbersImage(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.21, // 21% of device width
                        height: MediaQuery.of(context).size.width * 0.28, // 28% of device
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/home/english_numbers.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UrduAlphabetsImage(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.21, // 21% of device width
                        height: MediaQuery.of(context).size.width * 0.28, // 28% of device
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/home/urdu_alphabets.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UrduNumbersImage(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.21, // 21% of device width
                        height: MediaQuery.of(context).size.width * 0.28, // 28% of device
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/home/urdu_numbers.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
                        'assets/images/home/eagle.png',
                        height: MediaQuery.of(context).size.width * 0.06, // 6% height
                        width: MediaQuery.of(context).size.width * 0.12, // 12% width
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.06,
                        height: MediaQuery.of(context).size.width * 0.06,
                        child: IconButton(
                          icon: Icon(Icons.settings),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

