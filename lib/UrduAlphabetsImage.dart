
import 'package:flutter/material.dart';


class UrduAlphabetsImage extends StatefulWidget {
  @override
  _UrduAlphabetsImageState createState() => _UrduAlphabetsImageState();
}

class _UrduAlphabetsImageState extends State<UrduAlphabetsImage> {
  int _currentIndex = 0;
  List<String> _images = [
    'assets/images/urdu-alphabets/Urdu-Alphabets-1.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-2.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-3.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-4.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-5.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-6.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-7.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-8.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-9.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-10.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-11.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-12.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-13.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-14.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-15.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-16.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-17.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-18.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-19.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-20.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-21.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-22.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-23.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-24.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-25.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-26.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-27.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-28.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-29.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-30.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-31.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-32.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-33.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-34.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-35.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-36.png',
    'assets/images/urdu-alphabets/Urdu-Alphabets-37.png',

  ];

  List<String> _texts = [
    'ا سے انار',
    'ب سے بلی',
    'پ سے پالک',
    'ت سے تربوز',
    'ٹ سے ٹماٹر',
    'ث سے ثمر',
    'ج سے جوتا',
    'چ سے چڑیا',
    'ح سے حلوہ',
    'ڈ سے ڈھول',
    'د سے درخت',
    'خ سے خرگوش',
    'ذ سے ذر',
    'ر سے روٹی',
    'ڑ سے پہاڑ',
   'ا سے انار',
    'ب سے بلی',
    'ا سے انار',
    'ب سے بلی',
    'ا سے انار',
    'ب سے بلی',
    'ا سے انار',
    'ب سے بلی',
    'ا سے انار',
    'ب سے بلی',
    // Add other texts here
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
            _decrementIndex(); // Swipe right
          } else if (details.delta.dx < 0) {
            _incrementIndex(); // Swipe left
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
                        onPressed: _incrementIndex,
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
                        onPressed: _decrementIndex,
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