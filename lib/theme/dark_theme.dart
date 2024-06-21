import 'package:flutter/material.dart';
import 'package:kuber/theme/app_palette.dart';
import 'package:kuber/theme/extensions_theme_data.dart';

class DarkTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: false,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      surface: DarkThemeColors.colorPotBlack,
      onSurface: DarkThemeColors.colorPotBlack,
      primary: DarkThemeColors.colorPotBlack,
      onPrimary: DarkThemeColors.colorPotBlack,
      secondary: DarkThemeColors.colorFloralWhite,
      onSecondary: DarkThemeColors.colorFloralWhite,
      error: DarkThemeColors.colorEnglishRed,
      onError: DarkThemeColors.colorEnglishRed,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: DarkThemeColors.colorFloralWhite,
        padding: const EdgeInsets.symmetric(vertical: 20),
        shadowColor: DarkThemeColors.colorFloralWhite,
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
      bodyColor: DarkThemeColors.colorFloralWhite,
    ),
    extensions: [
      ExtensionsThemeData(
        primary: DarkThemeColors.colorPotBlack,
        secondary: DarkThemeColors.colorFloralWhite,
        accent: DarkThemeColors.colorUranianBlue,
        error: DarkThemeColors.colorEnglishRed,
        warning: DarkThemeColors.colorBergamotOrange,
      ),
    ],
  );
}
