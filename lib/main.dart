import 'package:flutter/material.dart';

import 'home/home_page.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return MaterialApp(
      title: 'Heroes',
      theme: themeData,
      home: HomePage(themeData),
    );
  }
}
