import 'package:flutter/material.dart';

class LightTheme {
  static Color colorFloralWhite = const Color(0xFFFFFBF5); // Background color
  static Color colorPotBlack = const Color(0xFF0F0F0F); // Foreground color 1
  static Color colorTeal = const Color(0xFF1F6E8C); // Foreground color 2
  static Color colorEnglishRed = const Color(0xFFAE445A); // Error color
  static Color colorBergamotOrange = const Color(0xFFF39F5A);

  static ThemeData theme = ThemeData(
    useMaterial3: false,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      surface: colorFloralWhite,
      onSurface: colorFloralWhite,
      primary: colorFloralWhite,
      onPrimary: colorFloralWhite,
      secondary: colorTeal,
      onSecondary: colorTeal,
      error: colorEnglishRed,
      onError: colorEnglishRed,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: colorPotBlack,
        padding: const EdgeInsets.symmetric(vertical: 20),
        elevation: 10,
        shadowColor: colorPotBlack,
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
      bodyColor: colorPotBlack,
    ),
  );
}
