import 'package:flutter/material.dart';
import 'package:pog_app2/pages/home.dart';
import 'package:pog_app2/pages/config.dart';
import 'package:pog_app2/themes/schemes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    MaterialApp(
      locale: locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        locale,
      ],
      theme: ThemeData.from(colorScheme: lightTheme),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/config': (context) => const Config(),
      },
    ),
  );
}
