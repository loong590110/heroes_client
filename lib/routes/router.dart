import 'package:flutter/material.dart';
import 'package:heroes_client/views/home/home_page.dart';
import 'package:heroes_client/views/notfound/not_found_page.dart';
import 'package:heroes_client/views/play/play_page.dart';
import 'package:heroes_client/views/splash/splash_page.dart';

Route<dynamic> onUnknownRoute(RouteSettings _) =>
    MaterialPageRoute(builder: (c) => NotFoundPage());

final routes = {
  '/': (context) => SplashPage(),
  '/home': (context) => HomePage(),
  '/play': (context) => PlayPage(),
};
