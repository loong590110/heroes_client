import 'package:flutter/material.dart';
import 'package:heroes_client/views/home/home_page.dart';
import 'package:heroes_client/views/notfound/not_found_page.dart';

const HOME = "/";

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HOME:
      return MaterialPageRoute(builder: (context) => HomePage());
    default:
      return MaterialPageRoute(builder: (context) => NotFoundPage());
  }
}
