# Anti Alergi

A Flutter application for managing allergies.

## Design System

This project uses a comprehensive design system to maintain consistency across the application. The design system includes:

- **Colors**: A blue-based palette with accessibility scores for better implementation choices
- **Typography**: Hierarchical text styles using the Urbanist font family
- **Spacing**: An 8-point grid system with specific spacing values
- **Border Radius**: Consistent rounding for UI elements

For detailed information about the design system, see the [Design System Documentation](lib/core/theme/design_system.md).

## Implementation

The design system is implemented in the following files:

- Colors: `lib/app/theme/app_colors.dart`
- Typography: `lib/app/theme/app_typography.dart`
- Spacing: `lib/app/theme/app_spacing.dart`
- Border Radius: `lib/app/theme/app_border_radius.dart`
- Theme: `lib/app/theme/app_theme.dart`

## Getting Started

This project is built with Flutter and Firebase.

### Prerequisites

- Flutter SDK
- Firebase account and project setup
- Android Studio or VS Code with Flutter extensions

### Setup

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. The Urbanist font files are already included in `assets/fonts/Urbanist/`
4. Run the app with `flutter run`

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [GetX Documentation](https://pub.dev/packages/get)
- [Firebase Documentation](https://firebase.google.com/docs)
