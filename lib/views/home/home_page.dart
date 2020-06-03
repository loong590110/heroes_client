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
    final screenWidth = MediaQuery.of(context).size.width;
    final count = screenWidth / 320;
    final gridCount = count > 5 ? 5 : count > 1 ? count.floor() : 1;
    final gridPadding = 15.0;
    final crossAxisSpacing = 30.0;
    final itemWidth =
        (screenWidth - crossAxisSpacing - gridPadding * 2) / gridCount;
    final coverRatio = 1.7;
    final itemHeight = itemWidth / coverRatio + (gridCount > 1 ? 95 : 75);
    final itemRatio = itemWidth / itemHeight;
    final items = fetchHomeList();
    return Scaffold(
      appBar: Header(context),
      body: GridView.builder(
        padding: EdgeInsets.only(left: gridPadding, right: gridPadding),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridCount,
            mainAxisSpacing: gridPadding,
            crossAxisSpacing: crossAxisSpacing,
            childAspectRatio: itemRatio),
        itemCount: items.length,
        itemBuilder: (context, index) =>
            HomeItemWidget(gridCount, items[index], itemRatio, coverRatio),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/go');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
