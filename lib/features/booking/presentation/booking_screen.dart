import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Booking_Screen extends StatefulWidget {
  @override
  State<Booking_Screen> createState() => _Booking_ScreenState();
}

class _Booking_ScreenState extends State<Booking_Screen> {
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
    return  Column(
      children: [
        Center(child: Text("data"))
      ],
    );

  }
}