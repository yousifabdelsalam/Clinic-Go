import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

Widget myGlassBackground({
  required Widget child,
  required BuildContext context
}) =>
    Scaffold(
      backgroundColor: Colors.teal.shade500.withOpacity(0.4),
      body: GlassmorphicContainer(
        blur: 20,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.teal.withOpacity(0.9),
              Colors.black.withOpacity(0.8),
            ]
        ),
        borderRadius: 0,
        border: 0,
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.teal,
            Colors.teal,
          ],
        ),
        width: MediaQuery.of(context).size.width,   // Give it full width
        height: MediaQuery.of(context).size.height,
        child: SafeArea(child: child),
      ),
    );