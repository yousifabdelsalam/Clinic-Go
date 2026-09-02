import 'package:flutter/material.dart';

class ColorManager {
  // ==========================================
  // 1. SCAFFOLD & BASE COLORS
  // ==========================================
  /// The base background color used for the Scaffold underneath your glass layer.
  static Color scaffoldBackground = Colors.teal.shade500.withOpacity(0.4);

  /// Pure dark/black tone for deep backgrounds or shadows.
  static const Color blackBase = Color(0xFF000000);

  /// Primary material teal color used across the app's accents and borders.
  static const Color primaryTeal = Colors.teal;

  // ==========================================
  // 2. GLASS BACKGROUND GRADIENT COLORS
  // ==========================================
  /// The top-left color of your glass background gradient (Teal with 0.9 opacity).
  static Color glassGradientStart = Colors.teal.withOpacity(0.9);

  /// The bottom-right color of your glass background gradient (Black with 0.8 opacity).
  static Color glassGradientEnd = Colors.black.withOpacity(0.8);

  // ==========================================
  // 3. READY-TO-USE GRADIENTS
  // ==========================================
  /// Matches the exact LinearGradient from your myGlassBackground widget.
  static LinearGradient primaryGlassGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      glassGradientStart,
      glassGradientEnd,
    ],
  );

  /// Matches the border gradient from your myGlassBackground widget.
  static const LinearGradient borderTealGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.teal,
      Colors.teal,
    ],
  );

  // ==========================================
  // 4. TEXT & ICON COLORS
  // ==========================================
  static const Color textWhite = Colors.white;
  static const Color textGrey = Color(0xFF94A3B8);
}