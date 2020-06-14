import 'dart:io';

import 'package:flutter/material.dart';
import 'package:heroes_client/widgets/empty_widget.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}

class _SplashState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 1500), () {
      Navigator.of(context).popAndPushNamed('/home');
    });
    return LoadingWidget(text: "正在初始化...");
  }
}
