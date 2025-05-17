import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../../theme/app_typography.dart';

/// A reusable widget that displays the verification table headers
/// Used in the home view above the verification items
class VerificationTableHeadersWidget extends StatelessWidget {
  const VerificationTableHeadersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
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
              'Tanggal',
              style: AppTypography.captionBold(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Gambar',
              style: AppTypography.captionBold(),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              'Diagnosis AI',
              style: AppTypography.captionBold(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Status',
              style: AppTypography.captionBold(),
            ),
          ),
        ],
      ),
    );
  }
}
