import 'package:flutter/material.dart';

ThemeData _themeData;

ThemeData get themeData => _themeData = _themeData ??
    ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
