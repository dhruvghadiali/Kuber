import 'package:flutter/material.dart';

class ExtensionsThemeData extends ThemeExtension<ExtensionsThemeData> {
  const ExtensionsThemeData({
    required this.primary,
    required this.secondary,
    required this.accent,
    required this.error,
    required this.warning,
  });

  final Color? primary;
  final Color? secondary;
  final Color? accent;
  final Color? error;
  final Color? warning;

  @override
  ExtensionsThemeData copyWith({
    Color? primary,
    Color? secondary,
    Color? accent,
    Color? error,
    Color? warning,
  }) {
    return ExtensionsThemeData(
      primary: primary ?? primary,
      secondary: secondary ?? secondary,
      accent: accent ?? accent,
      error: error ?? error,
      warning: warning ?? warning,
    );
  }

  @override
  ExtensionsThemeData lerp(
      ThemeExtension<ExtensionsThemeData>? other, double t) {
    if (other is! ExtensionsThemeData) {
      return this;
    }
    return ExtensionsThemeData(
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      accent: Color.lerp(accent, other.accent, t),
      error: Color.lerp(error, other.error, t),
      warning: Color.lerp(warning, other.warning, t),
    );
  }
}
