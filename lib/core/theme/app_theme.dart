import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_typography.dart';
import 'app_border_radius.dart';
import 'app_spacing.dart';

/// AppTheme provides the complete theme for the feature
/// It incorporates all the design system elements
class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  /// Get the light theme for the feature
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      // Color scheme
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.bluePrimary,
        onPrimary: AppColors.white,
        secondary: AppColors.blue700,
        onSecondary: AppColors.white,
        error: AppColors.error,
        onError: AppColors.white,
        surface: AppColors.background,
        onSurface: AppColors.gray900,
        surfaceContainer: AppColors.surface,
      ),

      // Scaffold background color
      scaffoldBackgroundColor: AppColors.background,

      // App bar theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.gray900,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTypography.title1Bold(),
      ),

      // Text theme
      textTheme: TextTheme(
        displayLarge: AppTypography.header1(),
        displayMedium: AppTypography.header2(),
        displaySmall: AppTypography.header3(),
        headlineLarge: AppTypography.title1(),
        headlineMedium: AppTypography.title2(),
        headlineSmall: AppTypography.title3(),
        titleLarge: AppTypography.title1Bold(),
        titleMedium: AppTypography.title2Bold(),
        titleSmall: AppTypography.title3Bold(),
        bodyLarge: AppTypography.body(),
        bodyMedium: AppTypography.body(),
        bodySmall: AppTypography.caption(),
        labelLarge: AppTypography.bodyBold(),
        labelMedium: AppTypography.body(),
        labelSmall: AppTypography.captionBold(),
      ),

      // Button themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.bluePrimary,
          foregroundColor: AppColors.white,
          textStyle: AppTypography.bodyBold(),
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.buttonPaddingVertical,
            horizontal: AppSpacing.buttonPaddingHorizontal,
          ),
          shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.md),
        ),
      ),

      // Outlined button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.bluePrimary,
          side: const BorderSide(color: AppColors.bluePrimary),
          textStyle: AppTypography.bodyBold(),
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.buttonPaddingVertical,
            horizontal: AppSpacing.buttonPaddingHorizontal,
          ),
          shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.md),
        ),
      ),

      // Text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.bluePrimary,
          textStyle: AppTypography.bodyBold(),
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.buttonPaddingVertical,
            horizontal: AppSpacing.buttonPaddingHorizontal,
          ),
        ),
      ),

      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.gray100,
        contentPadding: const EdgeInsets.all(AppSpacing.inputPadding),
        border: OutlineInputBorder(
          borderRadius: AppBorderRadius.md,
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.md,
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.md,
          borderSide: const BorderSide(color: AppColors.bluePrimary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.md,
          borderSide: const BorderSide(color: AppColors.error, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.md,
          borderSide: const BorderSide(color: AppColors.error, width: 2),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintStyle: AppTypography.body(color: AppColors.gray500),
      ),

      // Card theme
      cardTheme: CardTheme(
        color: AppColors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.md),
        margin: const EdgeInsets.all(AppSpacing.sm),
      ),

      // Dialog theme
      dialogTheme: DialogTheme(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.md),
        elevation: 4,
        titleTextStyle: AppTypography.title1Bold(),
        contentTextStyle: AppTypography.body(),
      ),

      // Bottom sheet theme
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
      ),

      // Divider theme
      dividerTheme: const DividerThemeData(
        color: AppColors.gray200,
        thickness: 1,
        space: 1,
      ),

      // Icon theme
      iconTheme: const IconThemeData(color: AppColors.gray700, size: 24),

      // Tab bar theme
      tabBarTheme: TabBarTheme(
        labelColor: AppColors.bluePrimary,
        unselectedLabelColor: AppColors.gray600,
        labelStyle: AppTypography.bodyBold(),
        unselectedLabelStyle: AppTypography.body(),
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: AppColors.bluePrimary, width: 2.0),
        ),
      ),
    );
  }

  /// Get the dark theme for the feature
  static ThemeData get darkTheme {
    // This is a basic implementation of dark theme
    // You can customize it further based on your design system
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      // Color scheme
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.blue400,
        onPrimary: AppColors.black,
        secondary: AppColors.blue300,
        onSecondary: AppColors.black,
        error: AppColors.error,
        onError: AppColors.black,
        surface: Color(0xFF121212), // Dark background
        onSurface: AppColors.white,
        surfaceContainer: Color(0xFF1E1E1E), // Dark surface variant
      ),

      // Scaffold background color
      scaffoldBackgroundColor: const Color(0xFF121212),

      // App bar theme
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF1E1E1E),
        foregroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTypography.title1Bold(color: AppColors.white),
      ),

      // Text theme
      textTheme: TextTheme(
        displayLarge: AppTypography.header1(color: AppColors.white),
        displayMedium: AppTypography.header2(color: AppColors.white),
        displaySmall: AppTypography.header3(color: AppColors.white),
        headlineLarge: AppTypography.title1(color: AppColors.white),
        headlineMedium: AppTypography.title2(color: AppColors.white),
        headlineSmall: AppTypography.title3(color: AppColors.white),
        titleLarge: AppTypography.title1Bold(color: AppColors.white),
        titleMedium: AppTypography.title2Bold(color: AppColors.white),
        titleSmall: AppTypography.title3Bold(color: AppColors.white),
        bodyLarge: AppTypography.body(color: AppColors.white),
        bodyMedium: AppTypography.body(color: AppColors.white),
        bodySmall: AppTypography.caption(color: AppColors.white),
        labelLarge: AppTypography.bodyBold(color: AppColors.white),
        labelMedium: AppTypography.body(color: AppColors.white),
        labelSmall: AppTypography.captionBold(color: AppColors.white),
      ),

      // Card theme
      cardTheme: CardTheme(
        color: const Color(0xFF2C2C2C),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.md),
        margin: const EdgeInsets.all(AppSpacing.sm),
      ),
    );
  }
}
