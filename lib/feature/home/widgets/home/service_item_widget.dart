import 'package:flutter/material.dart';

import '../../../../core/theme/app_border_radius.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/app_assets.dart';

/// A reusable service item widgets that displays an icon and title
/// Used in the home view for services like skin detection, history, etc.
class ServiceItemWidget extends StatelessWidget {
  final String svgAsset;
  final String title;
  final Function()? onTap;

  const ServiceItemWidget({
    Key? key,
    required this.svgAsset,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppBorderRadius.lg,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.blue50,
              borderRadius: AppBorderRadius.lg,
              boxShadow: [
                BoxShadow(
                  color: AppColors.blue200.withOpacity(0.3),
                  offset: const Offset(0, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            child: AppAssets.getSvg(
              svgAsset,
              width: 28,
              height: 28,
              color: AppColors.blue700,
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            title,
            style: AppTypography.captionBold(color: AppColors.blue900),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
