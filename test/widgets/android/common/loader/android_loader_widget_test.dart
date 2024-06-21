import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kuber/theme/dark_theme.dart';
import 'package:kuber/theme/app_palette.dart';
import 'package:kuber/theme/light_theme.dart';
import 'package:kuber/widgets/android/common/loader/android_loader_widget.dart';

void main() {
  group("Test case for android loader widget rendering", () {
    testWidgets('Check center widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidLoaderWidget(),
          ),
        ),
      );

      var centerWidget = find.byType(Center);

      expect(centerWidget, findsOneWidget);
    });

    testWidgets('Check circular progress indicator widget',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidLoaderWidget(),
          ),
        ),
      );

      var circularProgressIndicatorWidget =
          find.byType(CircularProgressIndicator);

      expect(circularProgressIndicatorWidget, findsOneWidget);
    });
  });

  group("Test case for android loader widget color", () {
    testWidgets('Check android loader widget light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: const Scaffold(
            body: AndroidLoaderWidget(),
          ),
        ),
      );

      var circularProgressIndicatorWidget =
          find.byType(CircularProgressIndicator);
      var circularProgressIndicatorWidgetColor =
          (tester.firstWidget(circularProgressIndicatorWidget)
                  as CircularProgressIndicator)
              .color;

      expect(
        circularProgressIndicatorWidgetColor,
        LightThemeColors.colorPotBlack,
      );
    });

    testWidgets('Check android loader widget dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidLoaderWidget(),
          ),
        ),
      );

      var circularProgressIndicatorWidget =
          find.byType(CircularProgressIndicator);
      var circularProgressIndicatorWidgetColor =
          (tester.firstWidget(circularProgressIndicatorWidget)
                  as CircularProgressIndicator)
              .color;

      expect(
        circularProgressIndicatorWidgetColor,
        DarkThemeColors.colorFloralWhite,
      );
    });

    testWidgets(
        'Check android loader widget custome color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidLoaderWidget(
              loaderColor: LightThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var circularProgressIndicatorWidget =
          find.byType(CircularProgressIndicator);
      var circularProgressIndicatorWidgetColor =
          (tester.firstWidget(circularProgressIndicatorWidget)
                  as CircularProgressIndicator)
              .color;

      expect(circularProgressIndicatorWidgetColor,
          LightThemeColors.colorEnglishRed);
    });

    testWidgets(
        'Check android loader widget custome color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidLoaderWidget(
              loaderColor: DarkThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var circularProgressIndicatorWidget =
          find.byType(CircularProgressIndicator);
      var circularProgressIndicatorWidgetColor =
          (tester.firstWidget(circularProgressIndicatorWidget)
                  as CircularProgressIndicator)
              .color;

      expect(
        circularProgressIndicatorWidgetColor,
        DarkThemeColors.colorEnglishRed,
      );
    });
  });
}
