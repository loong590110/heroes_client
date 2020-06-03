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
      TextStyle style = const TextStyle(color: Colors.grey, fontSize: 12)})
      : super(
          children: [
            CircularProgressIndicator(),
            if (text != null) Text(text, style: style),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        );
}
