import 'package:heroes_client/views/home/home_page.dart';
import 'package:heroes_client/views/notfound/not_found_page.dart';

final routes = {
  '/': (context) => HomePage(),
  '/video': (context) => HomePage(),
  '/notfound': (context) => NotFoundPage(),
};
