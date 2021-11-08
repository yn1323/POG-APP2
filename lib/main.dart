import 'package:flutter/material.dart';
import 'package:pog_app2/pages/home.dart';
import 'package:pog_app2/themes/schemes.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.from(colorScheme: lightTheme),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
      },
    ),
  );
}
