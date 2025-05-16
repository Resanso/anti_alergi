import 'package:flutter/material.dart';
import '../../utils/app_assets.dart';

/// A reusable widget that displays the app logo
/// Used in the app bar
class AppLogoWidget extends StatelessWidget {
  final double width;
  final double height;
  
  const AppLogoWidget({
    Key? key, 
    this.width = 32,
    this.height = 32,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: AppAssets.getSvg(AppAssets.logoSvg),
    );
  }
}
