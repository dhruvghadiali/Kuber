import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kuber/theme/dark_theme.dart';
import 'package:kuber/theme/light_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.surface,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              alignment: Alignment.center,
              color: Theme.of(context).colorScheme.secondary,
              child: Text(
                AppLocalizations.of(context)!.testMessage('Dhruv', 'Ghadiali'),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              AppLocalizations.of(context)!.testMessage('Dhruv', 'Ghadiali'),
              style: const TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
