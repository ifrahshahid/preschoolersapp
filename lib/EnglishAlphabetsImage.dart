import 'package:flutter/material.dart';

class EnglishAlphabetsImage extends StatefulWidget {
  @override
  _EnglishAlphabetsImageState createState() => _EnglishAlphabetsImageState();
}

class _EnglishAlphabetsImageState extends State<EnglishAlphabetsImage> {
  static const double _swipeThreshold = 50; // threshold in logical pixels
  int _currentIndex = 0;
  List<String> _images = [
    'assets/images/english-alphabets/A3.png',
    'assets/images/english-alphabets/B3.png',
    'assets/images/english-alphabets/C3.png',
    'assets/images/english-alphabets/D3.png',
    'assets/images/english-alphabets/E3.png',
    'assets/images/english-alphabets/F3.png',
    'assets/images/english-alphabets/G3.png',
    'assets/images/english-alphabets/H3.png',
    'assets/images/english-alphabets/I3.png',
    'assets/images/english-alphabets/J3.png',
    'assets/images/english-alphabets/K3.png',
    'assets/images/english-alphabets/L3.png',
    'assets/images/english-alphabets/M3.png',
    'assets/images/english-alphabets/N3.png',
    'assets/images/english-alphabets/O3.png',
    'assets/images/english-alphabets/P3.png',
    'assets/images/english-alphabets/Q3.png',
    'assets/images/english-alphabets/R3.png',
    'assets/images/english-alphabets/S3.png',
    'assets/images/english-alphabets/U3.png',
    'assets/images/english-alphabets/V3.png',
    'assets/images/english-alphabets/W3.png',
    'assets/images/english-alphabets/X3.png',
    'assets/images/english-alphabets/Y3.png',
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
        _currentIndex =
            0; // set the current index to 0 to avoid going to the last index
      } else {
        _currentIndex = (_currentIndex - 1) % _images.length;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx > 0) {
            _incrementIndex(); // Swipe right
          } else if (details.delta.dx < 0) {
            _decrementIndex(); // Swipe left
          }
        },
        child: Stack(
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
                width: MediaQuery.of(context).size.width *
                    0.06, // 6% of device width
                height: MediaQuery.of(context).size.width *
                    0.06, // 6% of device width
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
                  horizontal:
                      MediaQuery.of(context).size.width * 0.045, // 9% of width
                  vertical:
                      MediaQuery.of(context).size.width * 0.03, // 6% of height
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
      ),
    );
  }
}
