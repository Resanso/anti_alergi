import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppAssets {
  AppAssets._();

  // SVG Icons
  static const String logoSvg = 'assets/icons/logo.svg';
  static const String skinDetectionSvg = 'assets/icons/skin_detection.svg';
  static const String historySvg = 'assets/icons/history.svg';
  static const String treatmentSvg = 'assets/icons/treatment.svg';

  // Load SVG as a widget
  static SvgPicture getSvg(
    String assetName, {
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Color? color,
  }) {
    return SvgPicture.asset(
      assetName,
      width: width,
      height: height,
      fit: fit,
      colorFilter:
          color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
    );
  }

  // Placeholder Images - these would normally be replaced with actual images
  static Widget getSkinPlaceholder({
    double? width,
    double? height,
    BoxFit fit = BoxFit.cover,
    int index = 1,
  }) {
    // Different colors for different placeholders
    final colors = [Colors.brown[300]!, Colors.brown[200]!, Colors.brown[400]!];

    return Container(
      width: width,
      height: height,
      color: colors[index % colors.length],
    );
  }

  // News image placeholder
  static Widget getNewsPlaceholder({
    double? width,
    double? height,
    BoxFit fit = BoxFit.cover,
  }) {
    return Container(
      width: width,
      height: height,
      color: Colors.blueGrey[300],
      child: Center(child: Icon(Icons.photo, color: Colors.white, size: 40)),
    );
  }
}
