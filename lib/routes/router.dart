import 'package:flutter/material.dart';
import 'package:heroes_client/views/home/home_page.dart';
import 'package:heroes_client/views/notfound/not_found_page.dart';

Route<dynamic> onUnknownRoute(RouteSettings _) =>
    MaterialPageRoute(builder: (c) => NotFoundPage());

final routes = {
  '/': (context) => HomePage(),
  '/video': (context) => HomePage(),
};
