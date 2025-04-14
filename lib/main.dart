import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/fixture_page.dart';
import 'pages/news_page.dart';
import 'pages/federacion_page.dart';

void main() {
  runApp(RugbyChileApp());
}

class RugbyChileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chile Rugby',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/fixture': (context) => FixturePage(),
        '/news': (context) => NewsPage(),
        '/federacion': (context) => FederacionPage(),
      },
    );
  }
}
