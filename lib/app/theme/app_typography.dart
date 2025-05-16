import 'package:flutter/material.dart';

/// AppTypography provides all the text styles used in the app
/// These styles are based on the design system with proper hierarchy:
/// - Headers (H1, H2, H3): Used for main page headings and important sections
/// - Titles (T1, T2, T3, T4): Used for section titles and content headings
/// - Body: Used for main content text
/// - Caption: Used for supporting text and labels
class AppTypography {
  // Private constructor to prevent instantiation
  AppTypography._();
  // Base font
  static const String fontFamily = 'Urbanist';

  // Font weights
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // Headers
  static TextStyle header1({
    Color color = Colors.black,
    FontWeight fontWeight = regular,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 32,
      fontWeight: fontWeight,
      color: color,
      height: 1.25, // line height as a multiplier
    );
  }

  static TextStyle header1Bold({Color color = Colors.black}) {
    return header1(color: color, fontWeight: bold);
  }

  static TextStyle header2({
    Color color = Colors.black,
    FontWeight fontWeight = regular,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 28,
      fontWeight: fontWeight,
      color: color,
      height: 1.3,
    );
  }

  static TextStyle header2Bold({Color color = Colors.black}) {
    return header2(color: color, fontWeight: bold);
  }

  static TextStyle header3({
    Color color = Colors.black,
    FontWeight fontWeight = regular,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 24,
      fontWeight: fontWeight,
      color: color,
      height: 1.35,
    );
  }

  static TextStyle header3Bold({Color color = Colors.black}) {
    return header3(color: color, fontWeight: bold);
  }

  // Titles
  static TextStyle title1({
    Color color = Colors.black,
    FontWeight fontWeight = regular,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 20,
      fontWeight: fontWeight,
      color: color,
      height: 1.4,
    );
  }

  static TextStyle title1Bold({Color color = Colors.black}) {
    return title1(color: color, fontWeight: bold);
  }

  static TextStyle title2({
    Color color = Colors.black,
    FontWeight fontWeight = regular,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 18,
      fontWeight: fontWeight,
      color: color,
      height: 1.45,
    );
  }

  static TextStyle title2Bold({Color color = Colors.black}) {
    return title2(color: color, fontWeight: bold);
  }

  static TextStyle title3({
    Color color = Colors.black,
    FontWeight fontWeight = regular,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
    );
  }

  static TextStyle title3Bold({Color color = Colors.black}) {
    return title3(color: color, fontWeight: bold);
  }

  static TextStyle title4({
    Color color = Colors.black,
    FontWeight fontWeight = regular,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
    );
  }

  static TextStyle title4Bold({Color color = Colors.black}) {
    return title4(color: color, fontWeight: bold);
  }

  // Body
  static TextStyle body({
    Color color = Colors.black,
    FontWeight fontWeight = regular,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
    );
  }

  static TextStyle bodyBold({Color color = Colors.black}) {
    return body(color: color, fontWeight: bold);
  }

  // Caption
  static TextStyle caption({
    Color color = Colors.black,
    FontWeight fontWeight = regular,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
    );
  }

  static TextStyle captionBold({Color color = Colors.black}) {
    return caption(color: color, fontWeight: bold);
  }
}
