import 'package:flutter/material.dart';
import 'package:kuber/theme/app_palette.dart';
import 'package:kuber/theme/extensions_theme_data.dart';

class LightTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: false,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      surface: LightThemeColors.colorFloralWhite,
      onSurface: LightThemeColors.colorFloralWhite,
      primary: LightThemeColors.colorFloralWhite,
      onPrimary: LightThemeColors.colorFloralWhite,
      secondary: LightThemeColors.colorPotBlack,
      onSecondary: LightThemeColors.colorPotBlack,
      error: LightThemeColors.colorEnglishRed,
      onError: LightThemeColors.colorEnglishRed,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: LightThemeColors.colorPotBlack,
        padding: const EdgeInsets.symmetric(vertical: 20),
        elevation: 10,
        shadowColor: LightThemeColors.colorPotBlack,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
      displayLarge: TextStyle(),
      displayMedium: TextStyle(),
      displaySmall: TextStyle(),
      headlineLarge: TextStyle(),
      headlineMedium: TextStyle(),
      headlineSmall: TextStyle(),
      labelLarge: TextStyle(),
      labelMedium: TextStyle(),
      labelSmall: TextStyle(),
      titleLarge: TextStyle(),
      titleMedium: TextStyle(),
      titleSmall: TextStyle(),
    ).apply(
      bodyColor: LightThemeColors.colorPotBlack,
    ),
    extensions: [
      ExtensionsThemeData(
        primary: LightThemeColors.colorFloralWhite,
        secondary: LightThemeColors.colorPotBlack,
        accent: LightThemeColors.colorTeal,
        error: LightThemeColors.colorEnglishRed,
        warning: LightThemeColors.colorBergamotOrange,
      ),
    ],
  );
}
