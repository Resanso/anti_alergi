import 'package:flutter/material.dart';
import '../../../../core/theme/app_border_radius.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// A reusable widgets that displays the user greeting section with name and role
/// Used in the home view at the top of the screen
class UserGreetingCardWidget extends StatelessWidget {
  final String userName;
  final String userRole;

  const UserGreetingCardWidget({
    Key? key,
    required this.userName,
    required this.userRole,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.blue50,
        borderRadius: AppBorderRadius.md,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hi, ',
                      style: AppTypography.title2(color: AppColors.black),
                    ),
                    Expanded(
                      child: Text(
                        userName,
                        style: AppTypography.title2Bold(color: AppColors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Text(
                  userRole,
                  style: AppTypography.body(color: AppColors.blue700),
                ),
              ],
            ),
          ),
          // Decorative circles
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.blue200,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.blue300,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
