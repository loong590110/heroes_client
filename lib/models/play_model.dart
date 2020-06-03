import 'dart:convert';

import 'package:http/http.dart' as http;

class Hero {
  final int id;
  final String name;
  final String desc;

  Hero({this.id, this.name, this.desc});

  factory Hero.fromJson(Map<String, dynamic> map) =>
      Hero(id: map['id'], name: map['name'], desc: map['desc']);
}

Future<List<Hero>> fetchHeroes() async {
  var response = await http.get('http://129.211.165.246:8888/heroes');
  if (response.statusCode != 200) {
    return null;
  }
  List heroes = json.decode(response.body);
  return heroes.map((e) => Hero.fromJson(e)).toList();
}
