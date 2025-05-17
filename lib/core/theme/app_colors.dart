import 'package:flutter/material.dart';

/// AppColors provides all the colors used in the feature
/// These colors are based on the design system with accessibility scores
class AppColors {
  // Private constructor to prevent instantiation
  AppColors._();

  // Blue color palette with accessibility scores
  /// Blue 50 - #eaf6ff - rgb(234, 246, 255) - AAA (19.12)
  static const Color blue50 = Color(0xFFEAF6FF);

  /// Blue 100 - #bde4ff - rgb(189, 228, 255) - AAA (15.71)
  static const Color blue100 = Color(0xFFBDE4FF);

  /// Blue 200 - #9dd7ff - rgb(157, 215, 255) - AAA (13.60)
  static const Color blue200 = Color(0xFF9DD7FF);

  /// Blue 300 - #70c5ff - rgb(112, 197, 255) - AAA (11.12)
  static const Color blue300 = Color(0xFF70C5FF);

  /// Blue 400 - #55b9ff - rgb(85, 185, 255) - AAA (9.77)
  static const Color blue400 = Color(0xFF55B9FF);

  /// Blue 500 - #2aa8ff - rgb(42, 168, 255) - AAA (8.14)
  static const Color blue500 = Color(0xFF2AA8FF);

  /// Blue 600 - #2699e8 - rgb(38, 153, 232) - AA (6.80)
  static const Color blue600 = Color(0xFF2699E8);

  /// Blue 700 - #1e77b5 - rgb(30, 119, 181) - AA (4.82)
  static const Color blue700 = Color(0xFF1E77B5);

  /// Blue 800 - #175c8c - rgb(23, 92, 140) - AAA (4.36)
  static const Color blue800 = Color(0xFF175C8C);

  /// Blue 900 - #12476b - rgb(18, 71, 107) - AAA (9.82)
  static const Color blue900 = Color(0xFF12476B);
  // Primary color
  /// Blue Primary - #3B6FF4 - rgb(59, 111, 244) - AAA (9.82)
  static const Color bluePrimary = Color(0xFF3B6FF4);

  // Common colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // Gray scale
  static const Color gray100 = Color(0xFFF6F6F6);
  static const Color gray200 = Color(0xFFE8E8E8);
  static const Color gray300 = Color(0xFFD1D1D1);
  static const Color gray400 = Color(0xFFB8B8B8);
  static const Color gray500 = Color(0xFF999999);
  static const Color gray600 = Color(0xFF777777);
  static const Color gray700 = Color(0xFF555555);
  static const Color gray800 = Color(0xFF333333);
  static const Color gray900 = Color(0xFF111111);

  // Functional colors
  static const Color success = Color(0xFF34C759);
  static const Color error = Color(0xFFFF3B30);
  static const Color warning = Color(0xFFFF9500);
  static const Color info = Color(0xFF007AFF);

  // Background colors
  static const Color background = Color(0xFFFFFFFF);
  static const Color surfaceLight = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);
}
