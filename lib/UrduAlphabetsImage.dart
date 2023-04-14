
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
            left: 20,
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
    );
  }
}
