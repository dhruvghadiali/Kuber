import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kuber/helpers/app_key.dart';
import 'package:kuber/theme/app_palette.dart';
import 'package:kuber/theme/dark_theme.dart';
import 'package:kuber/theme/light_theme.dart';
import 'package:kuber/widgets/android/common/loader/android_api_request_loader_widget.dart';

void main() {
  double mainContainerBorderWidth = 5;
  double mainContainerVerticalMargin = 10;
  group("Test case for android api request loader widget rendering", () {
    testWidgets('Check main container widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(mainContainerForAndroidApiRequestLoaderWidget),
      );

      expect(containerWidget, findsOneWidget);
    });

    testWidgets('Check loader container widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(loderContainerForAndroidApiRequestLoaderWidget),
      );

      expect(containerWidget, findsOneWidget);
    });

    testWidgets('Check loader message container widget',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(loderMessageContainerForAndroidApiRequestLoaderWidget),
      );

      expect(containerWidget, findsOneWidget);
    });

    testWidgets('Check row widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var rowWidget = find.byKey(
        Key(rowForAndroidApiRequestLoaderWidget),
      );

      expect(rowWidget, findsOneWidget);
    });

    testWidgets('Check colum widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var rowWidget = find.byKey(
        Key(columnForAndroidApiRequestLoaderWidget),
      );

      expect(rowWidget, findsOneWidget);
    });
  });

  group("Test case for main container widget background color styling", () {
    testWidgets('Check main container widget color for dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(loderMessageContainerForAndroidApiRequestLoaderWidget),
      );
      var containerWidgetColor =
          (tester.firstWidget(containerWidget) as Container).color;

      expect(containerWidgetColor, DarkThemeColors.colorBergamotOrange);
    });

    testWidgets('Check main container widget custome color for dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidApiRequestLoaderWidget(
              background: DarkThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(loderMessageContainerForAndroidApiRequestLoaderWidget),
      );
      var containerWidgetColor =
          (tester.firstWidget(containerWidget) as Container).color;

      expect(containerWidgetColor, DarkThemeColors.colorEnglishRed);
    });

    testWidgets('Check main container widget color for light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: LightTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(loderMessageContainerForAndroidApiRequestLoaderWidget),
      );
      var containerWidgetColor =
          (tester.firstWidget(containerWidget) as Container).color;

      expect(containerWidgetColor, LightThemeColors.colorBergamotOrange);
    });

    testWidgets('Check main container widget custome color for light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidApiRequestLoaderWidget(
              background: LightThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(loderMessageContainerForAndroidApiRequestLoaderWidget),
      );
      var containerWidgetColor =
          (tester.firstWidget(containerWidget) as Container).color;

      expect(containerWidgetColor, LightThemeColors.colorEnglishRed);
    });
  });

  group("Test case for main container widget border styling", () {
    testWidgets('Check main container widget border color for dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byType(Container);
      var containerWidgetTester =
          (tester.firstWidget(containerWidget) as Container);
      var containerWidgetBoxDecoration =
          containerWidgetTester.decoration as BoxDecoration;

      expect(
        containerWidgetBoxDecoration.border,
        Border(
          right: BorderSide(
            color: DarkThemeColors.colorFloralWhite,
            width: mainContainerBorderWidth,
          ),
        ),
      );
    });

    testWidgets(
        'Check main container widget custome border color for dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidApiRequestLoaderWidget(
              foreground: DarkThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var containerWidget = find.byType(Container);
      var containerWidgetTester =
          (tester.firstWidget(containerWidget) as Container);
      var containerWidgetBoxDecoration =
          containerWidgetTester.decoration as BoxDecoration;

      expect(
        containerWidgetBoxDecoration.border,
        Border(
          right: BorderSide(
            color: DarkThemeColors.colorEnglishRed,
            width: mainContainerBorderWidth,
          ),
        ),
      );
    });

    testWidgets('Check main container widget border color for light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: LightTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byType(Container);
      var containerWidgetTester =
          (tester.firstWidget(containerWidget) as Container);
      var containerWidgetBoxDecoration =
          containerWidgetTester.decoration as BoxDecoration;

      expect(
        containerWidgetBoxDecoration.border,
        Border(
          right: BorderSide(
            color: LightThemeColors.colorPotBlack,
            width: mainContainerBorderWidth,
          ),
        ),
      );
    });

    testWidgets(
        'Check main container widget custome border color for light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidApiRequestLoaderWidget(
              foreground: LightThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var containerWidget = find.byType(Container);
      var containerWidgetTester =
          (tester.firstWidget(containerWidget) as Container);
      var containerWidgetBoxDecoration =
          containerWidgetTester.decoration as BoxDecoration;

      expect(
        containerWidgetBoxDecoration.border,
        Border(
          right: BorderSide(
            color: LightThemeColors.colorEnglishRed,
            width: mainContainerBorderWidth,
          ),
        ),
      );
    });
  });

  group("Test case for main container widget margin styling", () {
    testWidgets('Check main container widget margin for dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byType(Container);
      var containerWidgetTester =
          (tester.firstWidget(containerWidget) as Container);

      expect(
        containerWidgetTester.margin,
        EdgeInsets.symmetric(vertical: mainContainerVerticalMargin),
      );
    });

    testWidgets('Check main container widget margin for light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: LightTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byType(Container);
      var containerWidgetTester =
          (tester.firstWidget(containerWidget) as Container);

      expect(
        containerWidgetTester.margin,
        EdgeInsets.symmetric(vertical: mainContainerVerticalMargin),
      );
    });
  });

   group("Test case for loader container widget background color styling", () {
    testWidgets('Check loader container widget color for dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(loderContainerForAndroidApiRequestLoaderWidget),
      );
      var containerWidgetColor =
          (tester.firstWidget(containerWidget) as Container).color;

      expect(containerWidgetColor, DarkThemeColors.colorFloralWhite);
    });

    testWidgets('Check loader container widget custome color for dark theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: DarkTheme.theme,
          home: Scaffold(
            body: AndroidApiRequestLoaderWidget(
              foreground: DarkThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(loderContainerForAndroidApiRequestLoaderWidget),
      );
      var containerWidgetColor =
          (tester.firstWidget(containerWidget) as Container).color;

      expect(containerWidgetColor, DarkThemeColors.colorEnglishRed);
    });

    testWidgets('Check loader container widget color for light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: LightTheme.theme,
          home: const Scaffold(
            body: AndroidApiRequestLoaderWidget(),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(loderContainerForAndroidApiRequestLoaderWidget),
      );
      var containerWidgetColor =
          (tester.firstWidget(containerWidget) as Container).color;

      expect(containerWidgetColor, LightThemeColors.colorPotBlack);
    });

    testWidgets('Check main container widget custome color for light theme',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: LightTheme.theme,
          home: Scaffold(
            body: AndroidApiRequestLoaderWidget(
              foreground: LightThemeColors.colorEnglishRed,
            ),
          ),
        ),
      );

      var containerWidget = find.byKey(
        Key(loderContainerForAndroidApiRequestLoaderWidget),
      );
      var containerWidgetColor =
          (tester.firstWidget(containerWidget) as Container).color;

      expect(containerWidgetColor, LightThemeColors.colorEnglishRed);
    });
  });
}
