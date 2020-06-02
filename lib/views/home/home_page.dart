import 'dart:io';

import 'package:flutter/material.dart';
import 'package:heroes_client/models/home_list.dart';
import 'package:heroes_client/views/home/home_item.dart';

import 'header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final count = MediaQuery.of(context).size.width / 300;
    final items = fetchHomeList();
    final itemRatio = 1.1;
    return Scaffold(
      appBar: Header(context),
      body: GridView.builder(
        padding: EdgeInsets.only(left: 15, right: 15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: count.floor(),
            mainAxisSpacing: 15,
            crossAxisSpacing: 30,
            childAspectRatio: itemRatio),
        itemCount: items.length,
        itemBuilder: (context, index) =>
            HomeItemWidget(items[index], itemRatio),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          HttpClient()
              .get('http://129.211.165.246', 8888, 'heroes')
              .then((value) {});
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
