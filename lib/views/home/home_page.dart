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
    final gridCount = count > 5 ? 5 : count > 1 ? count.floor() : 1;
    final items = fetchHomeList();
    final itemRatio = gridCount > 1 ? 1.1 : 1.25;
    return Scaffold(
      appBar: Header(context),
      body: GridView.builder(
        padding: EdgeInsets.only(left: 15, right: 15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridCount,
            mainAxisSpacing: 15,
            crossAxisSpacing: 30,
            childAspectRatio: itemRatio),
        itemCount: items.length,
        itemBuilder: (context, index) =>
            HomeItemWidget(gridCount, items[index], itemRatio),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/notfound');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
