import 'package:flutter/material.dart';
import 'package:heroes_client/theme/theme.dart';

import 'home/home_page.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heroes',
      theme: themeData,
      home: HomePage(),
    );
  }
}
