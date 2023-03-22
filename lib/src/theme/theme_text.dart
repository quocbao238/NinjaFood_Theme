part of theme;

class ThemeText {
  static const TextStyle displayLarge =
      TextStyle(fontSize: ThemeFontSize.displayLarge);
  static const TextStyle displayMedium =
      TextStyle(fontSize: ThemeFontSize.displayMedium);
  static const TextStyle displaySmall =
      TextStyle(fontSize: ThemeFontSize.displaySmall);
  static const TextStyle headlineLarge =
      TextStyle(fontSize: ThemeFontSize.headlineLarge);
  static const TextStyle headlineMedium =
      TextStyle(fontSize: ThemeFontSize.headlineMedium);
  static const TextStyle headlineSmall =
      TextStyle(fontSize: ThemeFontSize.headlineSmall);
  static const TextStyle bodyLarge =
      TextStyle(fontSize: ThemeFontSize.bodyLarge);
  static const TextStyle bodyMedium =
      TextStyle(fontSize: ThemeFontSize.bodyMedium);
  static const TextStyle bodySmall =
      TextStyle(fontSize: ThemeFontSize.bodySmall);

  static TextTheme appTextTheme(Color textColor, Color labelColor) {
    return TextTheme(
      displayLarge: displayLarge.copyWith(color: textColor),
      displayMedium: displayMedium.copyWith(color: textColor),
      displaySmall: displaySmall.copyWith(color: textColor),
      headlineLarge: headlineLarge.copyWith(color: textColor),
      headlineMedium: headlineMedium.copyWith(color: textColor),
      headlineSmall: headlineSmall.copyWith(color: textColor),
      bodyLarge: bodyLarge.copyWith(color: textColor),
      bodyMedium: bodyMedium.copyWith(color: textColor),
      bodySmall: bodySmall.copyWith(color: textColor),
      labelLarge: bodyLarge.copyWith(color: labelColor),
      labelMedium: bodyMedium.copyWith(color: labelColor),
      labelSmall: bodySmall.copyWith(color: labelColor),
    );
  }
}
