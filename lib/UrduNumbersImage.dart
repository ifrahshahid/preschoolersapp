import 'package:flutter/material.dart';

class UrduNumbersImage extends StatefulWidget {
  @override
  _UrduNumbersImageState createState() => _UrduNumbersImageState();
}

class _UrduNumbersImageState extends State<UrduNumbersImage> {
  int _currentIndex = 0;
  List<String> _images = [
    'assets/images/urdu-numbers/urdu1-1.png',
    'assets/images/urdu-numbers/urdu1-2.png',
    'assets/images/urdu-numbers/urdu2-1.png',
    'assets/images/urdu-numbers/urdu2-2.png',
    'assets/images/urdu-numbers/urdu3-1.png',
    'assets/images/urdu-numbers/urdu3-2.png',
    'assets/images/urdu-numbers/urdu4-1.png',
    'assets/images/urdu-numbers/urdu4-2.png',
    'assets/images/urdu-numbers/urdu5-1.png',
    'assets/images/urdu-numbers/urdu5-2.png',
    'assets/images/urdu-numbers/urdu6-1.png',
    'assets/images/urdu-numbers/urdu6-2.png',
    'assets/images/urdu-numbers/urdu7-1.png',
    'assets/images/urdu-numbers/urdu7-2.png',
    'assets/images/urdu-numbers/urdu8-1.png',
    'assets/images/urdu-numbers/urdu8-2.png',
    'assets/images/urdu-numbers/urdu9-1.png',
    'assets/images/urdu-numbers/urdu9-2.png',
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
