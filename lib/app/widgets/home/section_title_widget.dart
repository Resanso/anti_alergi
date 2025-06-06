import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_typography.dart';

/// A reusable widget that displays a section title
/// Used throughout the home view to separate different sections
class SectionTitleWidget extends StatelessWidget {
  final String title;
  final Color color;

  const SectionTitleWidget({
    Key? key,
    required this.title,
    this.color = AppColors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTypography.title2Bold(color: color),
    );
  }
}
