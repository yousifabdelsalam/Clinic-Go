import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Settings_Screen extends StatefulWidget {
  @override
  State<Settings_Screen> createState() => _Settings_ScreenState();
}

class _Settings_ScreenState extends State<Settings_Screen> {
  int _counter = 0;

  // Coordinates for the draggable element
  double _xOffset = 50.0;
  double _yOffset = 300.0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.network(
            "https://github.com/RitickSaha/glassmophism/blob/master/example/assets/bg.png?raw=true",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          // Main Glass Panel
          SafeArea(
            child: Center(
              child: GlassmorphicContainer(
                width: 350,
                height: 750,
                borderRadius: 20,
                blur: 20,
                alignment: Alignment.bottomCenter,
                border: 2,
                linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.1),
                    Color(0xFFFFFFFF).withOpacity(0.05),
                  ],
                  stops: [0.1, 1],
                ),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.5),
                    Color(0xFFFFFFFF).withOpacity(0.5),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'System Overrides Logged:',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '$_counter',
                        style: TextStyle(
                            color: Colors.cyanAccent,
                            fontSize: 48,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.2),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        onPressed: _incrementCounter,
                        child: Text('+ Execute', style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Draggable Interactive Element
          Positioned(
            left: _xOffset,
            top: _yOffset,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  _xOffset += details.delta.dx;
                  _yOffset += details.delta.dy;
                });
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.cyanAccent.withOpacity(0.6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.cyanAccent.withOpacity(0.8),
                      blurRadius: 20,
                      spreadRadius: 5,
                    )
                  ],
                ),
                child: Center(
                  child: Icon(Icons.touch_app, color: Colors.black87),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}