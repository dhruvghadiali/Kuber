import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kuber/theme/dark_theme.dart';
import 'package:kuber/theme/light_theme.dart';
import 'package:kuber/theme/app_palette.dart';
import 'package:kuber/widgets/android/common/error_messages/form_error_message/android_form_error_message.dart';

void main() {
  String testMessage = 'Test Message from unit test';
  double verticalMargin = 10;
  group("Test case for android from error message widget rendering", () {
    testWidgets('Check container widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidFormErrorMessageWidget(
              errorMessage: testMessage,
            ),
          ),
        ),
      );

      var containerWidget = find.byType(Container);
      
      expect(containerWidget, findsOneWidget);
    });

    testWidgets('Check text widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidFormErrorMessageWidget(
              errorMessage: testMessage,
            ),
          ),
        ),
      );

      var textWidget = find.byType(Text);

      expect(textWidget, findsOneWidget);
    });
  });

  group("Test case for android from error message widget message", () {
    testWidgets('Check text have valid message or not',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidFormErrorMessageWidget(
              errorMessage: testMessage,
            ),
          ),
        ),
      );

      var textWidget = find.byType(Text);
      var textWidgetData = (tester.firstWidget(textWidget) as Text).data;

      expect(textWidgetData, testMessage);
    });

    testWidgets('Check text have empty message or not',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidFormErrorMessageWidget(
              errorMessage: '',
            ),
          ),
        ),
      );

      var textWidget = find.byType(Text);
      var textWidgetData = (tester.firstWidget(textWidget) as Text).data;

      expect(textWidgetData, '');
    });
  });

  group("Test case for android from error message widget styling", () {
    testWidgets('Check text color for dark theme', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidFormErrorMessageWidget(
              errorMessage: testMessage,
            ),
          ),
        ),
      );

      var textWidget = find.byType(Text);
      var textWidgetTextColor =
          (tester.firstWidget(textWidget) as Text).style?.color;

      expect(textWidgetTextColor, DarkThemeColors.colorEnglishRed);
    });

    testWidgets('Check text color for light theme', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidFormErrorMessageWidget(
              errorMessage: testMessage,
            ),
          ),
        ),
      );

      var textWidget = find.byType(Text);
      var textWidgetTextColor =
          (tester.firstWidget(textWidget) as Text).style?.color;

      expect(textWidgetTextColor, DarkThemeColors.colorEnglishRed);
    });

    testWidgets('Check container widget margin for dark theme', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: DarkTheme.theme,
          home:  Scaffold(
            body: AndroidFormErrorMessageWidget(
              errorMessage: testMessage,
            ),
          ),
        ),
      );

      var containerWidget = find.byType(Container);
      var containerWidgetTester = (tester.firstWidget(containerWidget) as Container);

      expect(containerWidgetTester.margin,  EdgeInsets.symmetric(vertical: verticalMargin));
    });

    testWidgets('Check container widget margin for light theme', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: LightTheme.theme,
          home:  Scaffold(
            body: AndroidFormErrorMessageWidget(
              errorMessage: testMessage,
            ),
          ),
        ),
      );

      var containerWidget = find.byType(Container);
      var containerWidgetTester = (tester.firstWidget(containerWidget) as Container);

      expect(containerWidgetTester.margin,  EdgeInsets.symmetric(vertical: verticalMargin));
    });
  });
}
