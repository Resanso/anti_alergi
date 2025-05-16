/// AppSpacing provides all the spacing values used in the app
/// These values are based on the design system and follow an 8-point grid system
/// with smaller increments for finer adjustments.
///
/// Usage guidelines:
/// - xs: Tiny spacing between closely related elements (4px)
/// - sm: Small spacing between related elements (8px)
/// - md: Standard spacing for most UI elements (16px)
/// - lg: Large spacing between distinct sections (24px)
/// - xl: Extra large spacing for major sections (32px)
/// - xxl: Double extra large spacing for page sections (48px)
/// - xxxl: Maximum spacing for dramatic separation (64px)
class AppSpacing {
  // Private constructor to prevent instantiation
  AppSpacing._();

  /// Extra small spacing - 4.0
  /// Use for tight spacing between very closely related items
  /// Examples: Between icon and text, between small UI elements
  static const double xs = 4.0;

  /// Small spacing - 8.0
  /// Use for standard spacing between related UI elements
  /// Examples: List item padding, gaps between form fields
  static const double sm = 8.0;

  /// Medium spacing - 16.0
  /// Use for standard content padding and spacing
  /// Examples: Card padding, section padding, form field spacing
  static const double md = 16.0;

  /// Large spacing - 24.0
  /// Use for spacing between distinct content sections
  /// Examples: Between content blocks, vertical spacing between sections
  static const double lg = 24.0;

  /// Extra large spacing - 32.0
  /// Use for significant separation between major UI elements
  /// Examples: Large content blocks, header to content spacing
  static const double xl = 32.0;

  /// Double extra large spacing - 48.0
  /// Use for major structural spacing in layouts
  /// Examples: Between major page sections, top/bottom page margins
  static const double xxl = 48.0;

  /// Triple extra large spacing - 64.0
  /// Use for maximum spacing needs and dramatic separation
  /// Examples: Hero sections, major page breaks
  static const double xxxl = 64.0;

  // Specific spacing for common UI elements

  /// Default card padding - 16.0
  static const double cardPadding = md;

  /// Default button padding vertical - 12.0
  static const double buttonPaddingVertical = 12.0;

  /// Default button padding horizontal - 24.0
  static const double buttonPaddingHorizontal = 24.0;

  /// Default input field padding - 16.0
  static const double inputPadding = md;

  /// Default page padding - 16.0
  static const double pagePadding = md;

  /// Default gap between items in a list - 8.0
  static const double listItemGap = sm;

  /// Default gap between sections - 24.0
  static const double sectionGap = lg;

  /// App bar height - 56.0
  static const double appBarHeight = 56.0;

  /// Bottom navigation bar height - 80.0
  static const double bottomNavHeight = 80.0;
}
