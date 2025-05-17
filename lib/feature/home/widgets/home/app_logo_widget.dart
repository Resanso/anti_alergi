import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

/// A reusable widgets that displays the feature logo
/// Used in the feature bar
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
