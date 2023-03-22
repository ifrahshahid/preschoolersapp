
import 'package:flutter/material.dart';

class AlphabetImage extends StatefulWidget {
  @override
  _AlphabetImageState createState() => _AlphabetImageState();
}

class _AlphabetImageState extends State<AlphabetImage> {
  int _currentIndex = 0;
  List<String> _images = [
    'assets/images/abc/A1.png',
    'assets/images/abc/A2.png',
    'assets/images/abc/A3.png',
    'assets/images/abc/B1.png',
    'assets/images/abc/B2.png',
    'assets/images/abc/B3.png',
    'assets/images/abc/C1.png',
    'assets/images/abc/C2.png',
    'assets/images/abc/C3.png',
    'assets/images/abc/D1.png',
    'assets/images/abc/D2.png',
    'assets/images/abc/D3.png',
    'assets/images/abc/E1.png',
    'assets/images/abc/E2.png',
    'assets/images/abc/E3.png',
    'assets/images/abc/F1.png',
    'assets/images/abc/G2.png',
    'assets/images/abc/G3.png',
    'assets/images/abc/H1.png',
    'assets/images/abc/H2.png',
    'assets/images/abc/H3.png',
    'assets/images/abc/I1.png',
    'assets/images/abc/I2.png',
    'assets/images/abc/I3.png',
    'assets/images/abc/J1.png',
    'assets/images/abc/J2.png',
    'assets/images/abc/J3.png',
    'assets/images/abc/K1.png',
    'assets/images/abc/K2.png',
    'assets/images/abc/K3.png',
    'assets/images/abc/L1.png',
    'assets/images/abc/L2.png',
    'assets/images/abc/L3.png',
    'assets/images/abc/M1.png',
    'assets/images/abc/M2.png',
    'assets/images/abc/M3.png',
    'assets/images/abc/N1.png',
    'assets/images/abc/N2.png',
    'assets/images/abc/N3.png',
    'assets/images/abc/O1.png',
    'assets/images/abc/O2.png',
    'assets/images/abc/O3.png',
    'assets/images/abc/P1.png',
    'assets/images/abc/P2.png',
    'assets/images/abc/P3.png',
    'assets/images/abc/Q1.png',
    'assets/images/abc/Q2.png',
    'assets/images/abc/Q3.png',
    'assets/images/abc/R1.png',
    'assets/images/abc/R2.png',
    'assets/images/abc/R3.png',
    'assets/images/abc/S1.png',
    'assets/images/abc/S2.png',
    'assets/images/abc/S3.png',
    'assets/images/abc/T1.png',
    'assets/images/abc/T2.png',
    'assets/images/abc/T3.png',
    'assets/images/abc/U1.png',
    'assets/images/abc/U2.png',
    'assets/images/abc/U3.png',
    'assets/images/abc/V1.png',
    'assets/images/abc/V2.png',
    'assets/images/abc/V3.png',
    'assets/images/abc/W1.png',
    'assets/images/abc/W2.png',
    'assets/images/abc/W3.png',
    'assets/images/abc/X1.png',
    'assets/images/abc/X2.png',
    'assets/images/abc/X3.png',
    'assets/images/abc/Y1.png',
    'assets/images/abc/Y2.png',
    'assets/images/abc/Y3.png',
    'assets/images/abc/Z1.png',
    'assets/images/abc/Z2.png',
    'assets/images/abc/Z3.png',
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
