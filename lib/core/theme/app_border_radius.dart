import 'package:flutter/material.dart';

/// AppBorderRadius provides all the border radius values used in the feature
/// These values are based on the design system
class AppBorderRadius {
  // Private constructor to prevent instantiation
  AppBorderRadius._();

  /// No border radius - 0.0
  static const BorderRadius none = BorderRadius.zero;

  /// Extra small border radius - 4.0
  static const BorderRadius xs = BorderRadius.all(Radius.circular(4.0));

  /// Small border radius - 8.0
  static const BorderRadius sm = BorderRadius.all(Radius.circular(8.0));

  /// Medium border radius - 12.0
  static const BorderRadius md = BorderRadius.all(Radius.circular(12.0));

  /// Large border radius - 16.0
  static const BorderRadius lg = BorderRadius.all(Radius.circular(16.0));

  /// Extra large border radius - 24.0
  static const BorderRadius xl = BorderRadius.all(Radius.circular(24.0));

  /// Full circle border radius - 999.0
  static const BorderRadius full = BorderRadius.all(Radius.circular(999.0));
}
