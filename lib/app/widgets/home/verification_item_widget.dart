import 'package:flutter/material.dart';
import '../../theme/app_border_radius.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../../theme/app_typography.dart';
import '../../utils/app_assets.dart';

/// A reusable widget that displays a single verification item
/// Used in the home view in the verification table
class VerificationItemWidget extends StatelessWidget {
  final Map<String, dynamic> data;
  final int index;

  const VerificationItemWidget({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isVerified = data['status'] == 'Sudah Verified';
    
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.gray200),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              data['date'],
              style: AppTypography.caption(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: AppBorderRadius.sm,
              ),
              clipBehavior: Clip.antiAlias,
              child: AppAssets.getSkinPlaceholder(
                index: index,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['percentage'],
                  style: AppTypography.captionBold(color: AppColors.blue700),
                ),
                Text(
                  data['diagnosis'],
                  style: AppTypography.caption(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.xs,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: isVerified ? AppColors.blue50 : AppColors.gray100,
                borderRadius: AppBorderRadius.xs,
              ),
              child: Text(
                data['status'],
                style: AppTypography.captionBold(
                  color: isVerified ? AppColors.blue700 : AppColors.gray400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
