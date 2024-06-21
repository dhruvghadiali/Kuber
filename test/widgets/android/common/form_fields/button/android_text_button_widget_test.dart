import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kuber/helpers/app_key.dart';
import 'package:kuber/theme/dark_theme.dart';
import 'package:kuber/theme/light_theme.dart';
import 'package:kuber/theme/app_palette.dart';
import 'package:kuber/widgets/android/common/form_fields/button/android_text_button_widget.dart';

void main() {
  String testButtonText = 'Test Button Text';
  bool isButtonClicked = false;
  group("Test case for android text button widget rendering", () {
    testWidgets('Check text button widget on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var textButtonWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );

      expect(textButtonWidget, findsOneWidget);
    });

    testWidgets('Check text button widget on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
              body: AndroidTextButtonWidget(
            onPressed: () {},
            buttonText: testButtonText,
          )),
        ),
      );

      var textButtonWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );

      expect(textButtonWidget, findsOneWidget);
    });

    testWidgets('Check text widget on dark theme', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var textWidget = find.byKey(
        Key(textForAndroidTextButtonWidget),
      );

      expect(textWidget, findsOneWidget);
    });

    testWidgets('Check text widget on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
              body: AndroidTextButtonWidget(
            onPressed: () {},
            buttonText: testButtonText,
          )),
        ),
      );

      var textWidget = find.byKey(
        Key(textForAndroidTextButtonWidget),
      );

      expect(textWidget, findsOneWidget);
    });
  });

  group("Test case for android text button widget styling", () {
    testWidgets('Check text button widget background color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var buttonTextWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );
      var textButtonStyle =
          (tester.firstWidget(buttonTextWidget) as TextButton).style;
      var textButtonBackgroundcolor =
          (textButtonStyle as ButtonStyle).backgroundColor;
      var color = (textButtonBackgroundcolor as WidgetStatePropertyAll).value;

      expect(color, DarkThemeColors.colorFloralWhite);
    });

    testWidgets(
        'Check text button widget custome background color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
              backgroundColor: DarkThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var buttonTextWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );
      var textButtonStyle =
          (tester.firstWidget(buttonTextWidget) as TextButton).style;
      var textButtonBackgroundcolor =
          (textButtonStyle as ButtonStyle).backgroundColor;
      var color = (textButtonBackgroundcolor as WidgetStatePropertyAll).value;

      expect(color, DarkThemeColors.colorEnglishRed);
    });

    testWidgets('Check text button widget background color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var buttonTextWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );
      var textButtonStyle =
          (tester.firstWidget(buttonTextWidget) as TextButton).style;
      var textButtonBackgroundcolor =
          (textButtonStyle as ButtonStyle).backgroundColor;
      var color = (textButtonBackgroundcolor as WidgetStatePropertyAll).value;

      expect(color, LightThemeColors.colorPotBlack);
    });

    testWidgets(
        'Check text button widget custome background color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
              backgroundColor: LightThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var buttonTextWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );
      var textButtonStyle =
          (tester.firstWidget(buttonTextWidget) as TextButton).style;
      var textButtonBackgroundcolor =
          (textButtonStyle as ButtonStyle).backgroundColor;
      var color = (textButtonBackgroundcolor as WidgetStatePropertyAll).value;

      expect(color, LightThemeColors.colorEnglishRed);
    });

    testWidgets('Check text button widget shadow color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var buttonTextWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );
      var textButtonStyle =
          (tester.firstWidget(buttonTextWidget) as TextButton).style;
      var textButtonShadowcolor = (textButtonStyle as ButtonStyle).shadowColor;
      var color = (textButtonShadowcolor as WidgetStatePropertyAll).value;

      expect(color, DarkThemeColors.colorFloralWhite);
    });

    testWidgets('Check text button widget custome shadow color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
              backgroundColor: DarkThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var buttonTextWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );
      var textButtonStyle =
          (tester.firstWidget(buttonTextWidget) as TextButton).style;
      var textButtonShadowcolor = (textButtonStyle as ButtonStyle).shadowColor;
      var color = (textButtonShadowcolor as WidgetStatePropertyAll).value;

      expect(color, DarkThemeColors.colorEnglishRed);
    });

    testWidgets('Check text button widget shadow color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var buttonTextWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );
      var textButtonStyle =
          (tester.firstWidget(buttonTextWidget) as TextButton).style;
      var textButtonShadowcolor = (textButtonStyle as ButtonStyle).shadowColor;
      var color = (textButtonShadowcolor as WidgetStatePropertyAll).value;

      expect(color, LightThemeColors.colorPotBlack);
    });

    testWidgets('Check text button widget custome shadow color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
              backgroundColor: LightThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var buttonTextWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );
      var textButtonStyle =
          (tester.firstWidget(buttonTextWidget) as TextButton).style;
      var textButtonShadowcolor = (textButtonStyle as ButtonStyle).shadowColor;
      var color = (textButtonShadowcolor as WidgetStatePropertyAll).value;

      expect(color, LightThemeColors.colorEnglishRed);
    });

    testWidgets('Check text button widget text color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var textWidget = find.byKey(
        Key(textForAndroidTextButtonWidget),
      );
      var textStyle = (tester.firstWidget(textWidget) as Text).style?.color;

      expect(textStyle, DarkThemeColors.colorPotBlack);
    });

    testWidgets('Check text button widget text custome color on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
              textColor: DarkThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var textWidget = find.byKey(
        Key(textForAndroidTextButtonWidget),
      );
      var textStyle = (tester.firstWidget(textWidget) as Text).style?.color;

      expect(textStyle, DarkThemeColors.colorEnglishRed);
    });

    testWidgets('Check text button widget text color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var textWidget = find.byKey(
        Key(textForAndroidTextButtonWidget),
      );
      var textStyle = (tester.firstWidget(textWidget) as Text).style?.color;

      expect(textStyle, LightThemeColors.colorFloralWhite);
    });

    testWidgets('Check text button widget text custome color on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
              textColor: LightThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var textWidget = find.byKey(
        Key(textForAndroidTextButtonWidget),
      );
      var textStyle = (tester.firstWidget(textWidget) as Text).style?.color;

      expect(textStyle, LightThemeColors.colorEnglishRed);
    });
  });

  group("Test case for android text button widget text", () {
    testWidgets('Check text button widget text on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var textWidget = find.byKey(
        Key(textForAndroidTextButtonWidget),
      );
      var text = (tester.firstWidget(textWidget) as Text).data;

      expect(text, testButtonText);
    });

    testWidgets('Check text button widget text on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () {},
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var textWidget = find.byKey(
        Key(textForAndroidTextButtonWidget),
      );
      var text = (tester.firstWidget(textWidget) as Text).data;

      expect(text, testButtonText);
    });
  });

  group("Test case for android text button widget click event", () {
    testWidgets('Check text button widget click event on dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () => isButtonClicked = true,
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var textButtonWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );

      await tester.tap(textButtonWidget);
      await tester.pump();

      expect(isButtonClicked, true);
    });

    testWidgets('Check text button widget click event on light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidTextButtonWidget(
              onPressed: () => isButtonClicked = true,
              buttonText: testButtonText,
            ),
          ),
        ),
      );

      var textButtonWidget = find.byKey(
        Key(textButtonForAndroidTextButtonWidget),
      );

      await tester.tap(textButtonWidget);
      await tester.pump();

      expect(isButtonClicked, true);
    });
  });
}
