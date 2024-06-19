import 'dart:ui';

abstract class DarkThemeColors {
  static Color colorPotBlack = const Color(0xFF161616); // Background color
  static Color colorFloralWhite = const Color(0xFFFFFBF5); // Foreground color 1
  static Color colorUranianBlue = const Color(0xFFbbe1fa); // Foreground color 2
  static Color colorEnglishRed = const Color(0xFFAE445A); // Error color
  static Color colorBergamotOrange = const Color(0xFFF39F5A); // Warning color
}

abstract class LightThemeColors {
  static Color colorFloralWhite = const Color(0xFFFFFBF5); // Background color
  static Color colorPotBlack = const Color(0xFF0F0F0F); // Foreground color 1
  static Color colorTeal = const Color(0xFF1F6E8C); // Foreground color 2
  static Color colorEnglishRed = const Color(0xFFAE445A); // Error color
  static Color colorBergamotOrange = const Color(0xFFF39F5A);
}
