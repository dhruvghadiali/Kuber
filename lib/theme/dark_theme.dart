import 'package:flutter/material.dart';

class DarkTheme {
  static Color colorPotBlack = const Color(0xFF161616); // background color
  static Color colorUranianBlue = const Color(0xFFbbe1fa); // Foreground color 1
  static Color colorWhiteSmoke = const Color(0xFFF4EEE0); // Foreground color 2
  static Color colorEnglishRed = const Color(0xFFAE445A); // Error color
  static Color colorBergamotOrange = const Color(0xFFF39F5A); // Warning color

  static ThemeData theme = ThemeData(
    useMaterial3: false,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      surface: colorPotBlack,
      onSurface: colorPotBlack,
      primary: colorPotBlack,
      onPrimary: colorPotBlack,
      secondary: colorWhiteSmoke,
      onSecondary: colorWhiteSmoke,
      error: colorEnglishRed,
      onError: colorEnglishRed,
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
      bodyColor: colorUranianBlue,
    ),
  );
}
