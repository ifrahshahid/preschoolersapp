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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullScreenImage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/images/image_6.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
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
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
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
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
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

class FullScreenImage extends StatefulWidget {
  @override
  _FullScreenImageState createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  int _currentIndex = 0;
  List<String> _images = [
    'assets/images/A1.png',
    'assets/images/A2.png',
    'assets/images/A3.png',
    'assets/images/B1.png',
    'assets/images/B2.png',
    'assets/images/B3.png',
    'assets/images/C1.png',
    'assets/images/C2.png',
    'assets/images/C3.png',
    'assets/images/D1.png',
    'assets/images/D2.png',
    'assets/images/D3.png',
    'assets/images/E1.png',
    'assets/images/E2.png',
    'assets/images/E3.png',
    'assets/images/F1.png',
    'assets/images/G2.png',
    'assets/images/G3.png',
    'assets/images/H1.png',
    'assets/images/H2.png',
    'assets/images/H3.png',
    'assets/images/I1.png',
    'assets/images/I2.png',
    'assets/images/I3.png',
    'assets/images/J1.png',
    'assets/images/J2.png',
    'assets/images/J3.png',
    'assets/images/K1.png',
    'assets/images/K2.png',
    'assets/images/K3.png',
    'assets/images/L1.png',
    'assets/images/L2.png',
    'assets/images/L3.png',
    'assets/images/M1.png',
    'assets/images/M2.png',
    'assets/images/M3.png',
    'assets/images/N1.png',
    'assets/images/N2.png',
    'assets/images/N3.png',
    'assets/images/O1.png',
    'assets/images/O2.png',
    'assets/images/O3.png',
    'assets/images/P1.png',
    'assets/images/P2.png',
    'assets/images/P3.png',
    'assets/images/Q1.png',
    'assets/images/Q2.png',
    'assets/images/Q3.png',
    'assets/images/R1.png',
    'assets/images/R2.png',
    'assets/images/R3.png',
    'assets/images/S1.png',
    'assets/images/S2.png',
    'assets/images/S3.png',
    'assets/images/T1.png',
    'assets/images/T2.png',
    'assets/images/T3.png',
    'assets/images/U1.png',
    'assets/images/U2.png',
    'assets/images/U3.png',
    'assets/images/V1.png',
    'assets/images/V2.png',
    'assets/images/V3.png',
    'assets/images/W1.png',
    'assets/images/W2.png',
    'assets/images/W3.png',
    'assets/images/X1.png',
    'assets/images/X2.png',
    'assets/images/X3.png',
    'assets/images/Y1.png',
    'assets/images/Y2.png',
    'assets/images/Y3.png',
    'assets/images/Z1.png',
    'assets/images/Z2.png',
    'assets/images/Z3.png',
  ];

  void _incrementIndex() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _images.length;
    });
  }

  void _decrementIndex() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + _images.length) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_images[_currentIndex]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: _decrementIndex,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: _incrementIndex,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
