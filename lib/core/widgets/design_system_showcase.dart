import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';
import '../theme/app_spacing.dart';
import '../theme/app_border_radius.dart';

/// A sample widgets that showcases the design system.
/// This can be used to visualize all the elements of the design system in one place.
class DesignSystemShowcase extends StatelessWidget {
  const DesignSystemShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design System', style: AppTypography.title1Bold()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Typography Showcase
            _buildSectionTitle('Typography'),
            _buildTypographyShowcase(),

            const SizedBox(height: AppSpacing.lg),

            // Colors Showcase
            _buildSectionTitle('Colors'),
            _buildColorsShowcase(),

            const SizedBox(height: AppSpacing.lg),

            // Spacing Showcase
            _buildSectionTitle('Spacing'),
            _buildSpacingShowcase(),

            const SizedBox(height: AppSpacing.lg),

            // Border Radius Showcase
            _buildSectionTitle('Border Radius'),
            _buildBorderRadiusShowcase(),

            const SizedBox(height: AppSpacing.lg),

            // Button Showcase
            _buildSectionTitle('Buttons'),
            _buildButtonsShowcase(context),

            const SizedBox(height: AppSpacing.lg),

            // Card Showcase
            _buildSectionTitle('Cards'),
            _buildCardsShowcase(),

            const SizedBox(height: AppSpacing.xxxl),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Text(
        title,
        style: AppTypography.header3Bold(color: AppColors.blue700),
      ),
    );
  }

  Widget _buildTypographyShowcase() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Header 1', style: AppTypography.header1()),
        Text('Header 1 Bold', style: AppTypography.header1Bold()),
        const SizedBox(height: AppSpacing.sm),

        Text('Header 2', style: AppTypography.header2()),
        Text('Header 2 Bold', style: AppTypography.header2Bold()),
        const SizedBox(height: AppSpacing.sm),

        Text('Header 3', style: AppTypography.header3()),
        Text('Header 3 Bold', style: AppTypography.header3Bold()),
        const SizedBox(height: AppSpacing.sm),

        Text('Title 1', style: AppTypography.title1()),
        Text('Title 1 Bold', style: AppTypography.title1Bold()),
        const SizedBox(height: AppSpacing.sm),

        Text('Title 2', style: AppTypography.title2()),
        Text('Title 2 Bold', style: AppTypography.title2Bold()),
        const SizedBox(height: AppSpacing.sm),

        Text('Title 3', style: AppTypography.title3()),
        Text('Title 3 Bold', style: AppTypography.title3Bold()),
        const SizedBox(height: AppSpacing.sm),

        Text('Title 4', style: AppTypography.title4()),
        Text('Title 4 Bold', style: AppTypography.title4Bold()),
        const SizedBox(height: AppSpacing.sm),

        Text('Body', style: AppTypography.body()),
        Text('Body Bold', style: AppTypography.bodyBold()),
        const SizedBox(height: AppSpacing.sm),

        Text('Caption', style: AppTypography.caption()),
        Text('Caption Bold', style: AppTypography.captionBold()),
      ],
    );
  }

  Widget _buildColorsShowcase() {
    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      children: [
        _buildColorBox('blue-50', AppColors.blue50),
        _buildColorBox('blue-100', AppColors.blue100),
        _buildColorBox('blue-200', AppColors.blue200),
        _buildColorBox('blue-300', AppColors.blue300),
        _buildColorBox('blue-400', AppColors.blue400),
        _buildColorBox('blue-500', AppColors.blue500),
        _buildColorBox('blue-600', AppColors.blue600),
        _buildColorBox('blue-700', AppColors.blue700, textColor: Colors.white),
        _buildColorBox('blue-800', AppColors.blue800, textColor: Colors.white),
        _buildColorBox('blue-900', AppColors.blue900, textColor: Colors.white),
        _buildColorBox(
          'blue-primary',
          AppColors.bluePrimary,
          textColor: Colors.white,
        ),
      ],
    );
  }

  Widget _buildColorBox(
    String label,
    Color color, {
    Color textColor = Colors.black,
  }) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(color: color, borderRadius: AppBorderRadius.md),
      alignment: Alignment.center,
      child: Text(
        label,
        style: AppTypography.captionBold(color: textColor),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildSpacingShowcase() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSpacingRow('xs', AppSpacing.xs),
        _buildSpacingRow('sm', AppSpacing.sm),
        _buildSpacingRow('md', AppSpacing.md),
        _buildSpacingRow('lg', AppSpacing.lg),
        _buildSpacingRow('xl', AppSpacing.xl),
        _buildSpacingRow('xxl', AppSpacing.xxl),
        _buildSpacingRow('xxxl', AppSpacing.xxxl),
      ],
    );
  }

  Widget _buildSpacingRow(String label, double spacing) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
      child: Row(
        children: [
          Container(
            width: 100,
            alignment: Alignment.centerLeft,
            child: Text(label, style: AppTypography.bodyBold()),
          ),
          const Text(' - '),
          Text('${spacing.toInt()} px', style: AppTypography.body()),
          const Spacer(),
          Container(width: spacing, height: 24, color: AppColors.blue300),
        ],
      ),
    );
  }

  Widget _buildBorderRadiusShowcase() {
    return Wrap(
      spacing: AppSpacing.md,
      runSpacing: AppSpacing.md,
      children: [
        _buildBorderRadiusBox('none', AppBorderRadius.none),
        _buildBorderRadiusBox('xs', AppBorderRadius.xs),
        _buildBorderRadiusBox('sm', AppBorderRadius.sm),
        _buildBorderRadiusBox('md', AppBorderRadius.md),
        _buildBorderRadiusBox('lg', AppBorderRadius.lg),
        _buildBorderRadiusBox('xl', AppBorderRadius.xl),
        _buildBorderRadiusBox('full', AppBorderRadius.full),
      ],
    );
  }

  Widget _buildBorderRadiusBox(String label, BorderRadius radius) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.blue300,
            borderRadius: radius,
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(label, style: AppTypography.caption()),
      ],
    );
  }

  Widget _buildButtonsShowcase(BuildContext context) {
    return Wrap(
      spacing: AppSpacing.md,
      runSpacing: AppSpacing.md,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
        OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
        TextButton(onPressed: () {}, child: const Text('Text')),
      ],
    );
  }

  Widget _buildCardsShowcase() {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Card Title', style: AppTypography.title3Bold()),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  'This is a sample card that demonstrates the Card style from our design system.',
                  style: AppTypography.body(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
