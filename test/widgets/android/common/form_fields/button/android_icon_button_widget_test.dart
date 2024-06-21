import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kuber/helpers/app_key.dart';
import 'package:kuber/theme/dark_theme.dart';
import 'package:kuber/theme/light_theme.dart';
import 'package:kuber/theme/app_palette.dart';
import 'package:kuber/widgets/android/common/form_fields/button/android_icon_button_widget.dart';

void main() {
  IconData testIcon = Icons.delete;
  String testTooltip = 'Delete';
  bool isButtonClicked = false;
  double testIconSize = 35;

  group("Test case for android icon button widget rendering", () {
    testWidgets('Check material widget on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var materialWidget = find.byKey(
        Key(materialForAndroidIconButtonWidget),
      );

      expect(materialWidget, findsOneWidget);
    });

    testWidgets('Check material widget on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var materialWidget = find.byKey(
        Key(materialForAndroidIconButtonWidget),
      );

      expect(materialWidget, findsOneWidget);
    });

    testWidgets('Check icon button widget on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconButtonWidget = find.byKey(
        Key(iconButtonForAndroidIconButtonWidget),
      );

      expect(iconButtonWidget, findsOneWidget);
    });

    testWidgets('Check icon button widget on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconButtonWidget = find.byKey(
        Key(iconButtonForAndroidIconButtonWidget),
      );

      expect(iconButtonWidget, findsOneWidget);
    });

    testWidgets('Check icon widget on dark theme', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );

      expect(iconWidget, findsOneWidget);
    });

    testWidgets('Check icon widget on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );

      expect(iconWidget, findsOneWidget);
    });
  });

  group("Test case for android icon button widget styling", () {
    testWidgets('Check material widget color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var materialWidget = find.byKey(
        Key(materialForAndroidIconButtonWidget),
      );
      var materialWidgetColor =
          (tester.firstWidget(materialWidget) as Material).color;

      expect(materialWidgetColor, DarkThemeColors.colorPotBlack);
    });

    testWidgets('Check material widget custome color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
              backgroundColor: DarkThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var materialWidget = find.byKey(
        Key(materialForAndroidIconButtonWidget),
      );
      var materialWidgetColor =
          (tester.firstWidget(materialWidget) as Material).color;

      expect(materialWidgetColor, DarkThemeColors.colorEnglishRed);
    });

    testWidgets('Check material widget color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var materialWidget = find.byKey(
        Key(materialForAndroidIconButtonWidget),
      );
      var materialWidgetColor =
          (tester.firstWidget(materialWidget) as Material).color;

      expect(materialWidgetColor, LightThemeColors.colorFloralWhite);
    });

    testWidgets('Check material widget custome color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
              backgroundColor: LightThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var materialWidget = find.byKey(
        Key(materialForAndroidIconButtonWidget),
      );
      var materialWidgetColor =
          (tester.firstWidget(materialWidget) as Material).color;

      expect(materialWidgetColor, LightThemeColors.colorEnglishRed);
    });

    testWidgets('Check icon button widget splash color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconButtonWidget = find.byKey(
        Key(iconButtonForAndroidIconButtonWidget),
      );
      var iconButtonSplashColor =
          (tester.firstWidget(iconButtonWidget) as IconButton).splashColor;

      expect(iconButtonSplashColor, DarkThemeColors.colorFloralWhite);
    });

    testWidgets('Check icon button widget custome splash color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
              iconColor: DarkThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var iconButtonWidget = find.byKey(
        Key(iconButtonForAndroidIconButtonWidget),
      );
      var iconButtonSplashColor =
          (tester.firstWidget(iconButtonWidget) as IconButton).splashColor;

      expect(iconButtonSplashColor, DarkThemeColors.colorEnglishRed);
    });

    testWidgets('Check icon button widget splash color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconButtonWidget = find.byKey(
        Key(iconButtonForAndroidIconButtonWidget),
      );
      var iconButtonSplashColor =
          (tester.firstWidget(iconButtonWidget) as IconButton).splashColor;

      expect(iconButtonSplashColor, LightThemeColors.colorPotBlack);
    });

    testWidgets('Check icon button widget custome splash color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
              iconColor: LightThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var iconButtonWidget = find.byKey(
        Key(iconButtonForAndroidIconButtonWidget),
      );
      var iconButtonSplashColor =
          (tester.firstWidget(iconButtonWidget) as IconButton).splashColor;

      expect(iconButtonSplashColor, LightThemeColors.colorEnglishRed);
    });

    testWidgets('Check icon button widget icon color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );
      var iconColor = (tester.firstWidget(iconWidget) as Icon).color;

      expect(iconColor, DarkThemeColors.colorFloralWhite);
    });

    testWidgets('Check icon button widget custome icon color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
              iconColor: DarkThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );
      var iconColor = (tester.firstWidget(iconWidget) as Icon).color;

      expect(iconColor, DarkThemeColors.colorEnglishRed);
    });

    testWidgets('Check icon button widget icon color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () => isButtonClicked = true,
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );
      var iconColor = (tester.firstWidget(iconWidget) as Icon).color;

      expect(iconColor, LightThemeColors.colorPotBlack);
    });

    testWidgets('Check icon button widget custome icon color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
              iconColor: LightThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );
      var iconColor = (tester.firstWidget(iconWidget) as Icon).color;

      expect(iconColor, LightThemeColors.colorEnglishRed);
    });
  });

  group("Test case for android icon button widget tooltip text", () {
    testWidgets('Check icon button widget tooltip text on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconButtonWidget = find.byKey(
        Key(iconButtonForAndroidIconButtonWidget),
      );
      var iconButtonTooltipText =
          (tester.firstWidget(iconButtonWidget) as IconButton).tooltip;

      expect(iconButtonTooltipText, testTooltip);
    });

    testWidgets('Check icon button widget tooltip text on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconButtonWidget = find.byKey(
        Key(iconButtonForAndroidIconButtonWidget),
      );
      var iconButtonTooltipText =
          (tester.firstWidget(iconButtonWidget) as IconButton).tooltip;

      expect(iconButtonTooltipText, testTooltip);
    });
  });

  group("Test case for android icon button widget icon", () {
    testWidgets('Check icon button widget icon on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );
      var icon = (tester.firstWidget(iconWidget) as Icon).icon;

      expect(icon, testIcon);
    });

    testWidgets('Check icon button widget icon on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );
      var icon = (tester.firstWidget(iconWidget) as Icon).icon;

      expect(icon, testIcon);
    });
  });

  group("Test case for android icon button widget size", () {
    testWidgets('Check icon button widget icon size on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );
      var iconSize = (tester.firstWidget(iconWidget) as Icon).size;

      expect(iconSize, null);
    });

    testWidgets('Check icon button widget custom icon size on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
              iconSize: testIconSize,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );
      var iconSize = (tester.firstWidget(iconWidget) as Icon).size;

      expect(iconSize, testIconSize);
    });

    testWidgets('Check icon button widget icon size on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );
      var iconSize = (tester.firstWidget(iconWidget) as Icon).size;

      expect(iconSize, null);
    });

    testWidgets('Check icon button widget custome icon size on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () {},
              icon: testIcon,
              tooltip: testTooltip,
              iconSize: testIconSize,
            ),
          ),
        ),
      );

      var iconWidget = find.byKey(
        Key(iconForAndroidIconButtonWidget),
      );
      var iconSize = (tester.firstWidget(iconWidget) as Icon).size;

      expect(iconSize, testIconSize);
    });
  });

  group("Test case for android icon button widget click event", () {
    testWidgets('Check icon button widget click event on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () => isButtonClicked = true,
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconButtonWidget = find.byKey(
        Key(iconButtonForAndroidIconButtonWidget),
      );

      await tester.tap(iconButtonWidget);
      await tester.pump();

      expect(isButtonClicked, true);
    });

    testWidgets('Check icon button widget click event on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidIconButtonWidget(
              onPressed: () => isButtonClicked = true,
              icon: testIcon,
              tooltip: testTooltip,
            ),
          ),
        ),
      );

      var iconButtonWidget = find.byKey(
        Key(iconButtonForAndroidIconButtonWidget),
      );

      await tester.tap(iconButtonWidget);
      await tester.pump();

      expect(isButtonClicked, true);
    });
  });
}
