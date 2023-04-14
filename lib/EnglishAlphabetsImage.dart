
import 'package:flutter/material.dart';

class EnglishAlphabetsImage extends StatefulWidget {
  @override
  _EnglishAlphabetsImageState createState() => _EnglishAlphabetsImageState();
}

class _EnglishAlphabetsImageState extends State<EnglishAlphabetsImage> {
  int _currentIndex = 0;
  List<String> _images = [
    'assets/images/english-alphabets/A1.png',
    'assets/images/english-alphabets/A2.png',
    'assets/images/english-alphabets/A3.png',
    'assets/images/english-alphabets/B1.png',
    'assets/images/english-alphabets/B2.png',
    'assets/images/english-alphabets/B3.png',
    'assets/images/english-alphabets/C1.png',
    'assets/images/english-alphabets/C2.png',
    'assets/images/english-alphabets/C3.png',
    'assets/images/english-alphabets/D1.png',
    'assets/images/english-alphabets/D2.png',
    'assets/images/english-alphabets/D3.png',
    'assets/images/english-alphabets/E1.png',
    'assets/images/english-alphabets/E2.png',
    'assets/images/english-alphabets/E3.png',
    'assets/images/english-alphabets/F1.png',
    'assets/images/english-alphabets/G2.png',
    'assets/images/english-alphabets/G3.png',
    'assets/images/english-alphabets/H1.png',
    'assets/images/english-alphabets/H2.png',
    'assets/images/english-alphabets/H3.png',
    'assets/images/english-alphabets/I1.png',
    'assets/images/english-alphabets/I2.png',
    'assets/images/english-alphabets/I3.png',
    'assets/images/english-alphabets/J1.png',
    'assets/images/english-alphabets/J2.png',
    'assets/images/english-alphabets/J3.png',
    'assets/images/english-alphabets/K1.png',
    'assets/images/english-alphabets/K2.png',
    'assets/images/english-alphabets/K3.png',
    'assets/images/english-alphabets/L1.png',
    'assets/images/english-alphabets/L2.png',
    'assets/images/english-alphabets/L3.png',
    'assets/images/english-alphabets/M1.png',
    'assets/images/english-alphabets/M2.png',
    'assets/images/english-alphabets/M3.png',
    'assets/images/english-alphabets/N1.png',
    'assets/images/english-alphabets/N2.png',
    'assets/images/english-alphabets/N3.png',
    'assets/images/english-alphabets/O1.png',
    'assets/images/english-alphabets/O2.png',
    'assets/images/english-alphabets/O3.png',
    'assets/images/english-alphabets/P1.png',
    'assets/images/english-alphabets/P2.png',
    'assets/images/english-alphabets/P3.png',
    'assets/images/english-alphabets/Q1.png',
    'assets/images/english-alphabets/Q2.png',
    'assets/images/english-alphabets/Q3.png',
    'assets/images/english-alphabets/R1.png',
    'assets/images/english-alphabets/R2.png',
    'assets/images/english-alphabets/R3.png',
    'assets/images/english-alphabets/S1.png',
    'assets/images/english-alphabets/S2.png',
    'assets/images/english-alphabets/S3.png',
    'assets/images/english-alphabets/T1.png',
    'assets/images/english-alphabets/T2.png',
    'assets/images/english-alphabets/T3.png',
    'assets/images/english-alphabets/U1.png',
    'assets/images/english-alphabets/U2.png',
    'assets/images/english-alphabets/U3.png',
    'assets/images/english-alphabets/V1.png',
    'assets/images/english-alphabets/V2.png',
    'assets/images/english-alphabets/V3.png',
    'assets/images/english-alphabets/W1.png',
    'assets/images/english-alphabets/W2.png',
    'assets/images/english-alphabets/W3.png',
    'assets/images/english-alphabets/X1.png',
    'assets/images/english-alphabets/X2.png',
    'assets/images/english-alphabets/X3.png',
    'assets/images/english-alphabets/Y1.png',
    'assets/images/english-alphabets/Y2.png',
    'assets/images/english-alphabets/Y3.png',
    'assets/images/english-alphabets/Z1.png',
    'assets/images/english-alphabets/Z2.png',
    'assets/images/english-alphabets/Z3.png',
  ];

  void _incrementIndex() {
    setState(() {
      if (_currentIndex == _images.length - 1) {
        // If at last index, do not increment
        return;
      }
      _currentIndex++;
    });
  }

  void _decrementIndex() {
    setState(() {
      if (_currentIndex == 0) {
        _currentIndex = 0; // set the current index to 0 to avoid going to the last index
      } else {
        _currentIndex = (_currentIndex - 1) % _images.length;
      }
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
              width: MediaQuery.of(context).size.width * 0.06, // 6% of device width
              height: MediaQuery.of(context).size.width * 0.06, // 6% of device width
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
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.045, // 9% of width
                vertical: MediaQuery.of(context).size.width * 0.03, // 6% of height
              ),
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
