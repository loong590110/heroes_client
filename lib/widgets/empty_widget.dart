import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends Column {
  EmptyWidget(String text,
      {Image icon, TextStyle style = const TextStyle(color: Colors.grey)})
      : super(
          children: [
            if (icon != null) icon,
            Text(text),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        );
}

class LoadingWidget extends Column {
  LoadingWidget(
      {String text,
      TextStyle style = const TextStyle(color: Colors.grey, fontSize: 13)})
      : super(
          children: [
            CircularProgressIndicator(),
            if (text != null)
              Container(
                child: Text(text, style: style),
                padding: EdgeInsets.only(top: 10),
              ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        );
}
