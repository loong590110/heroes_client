import 'package:flutter/material.dart';

class Header extends AppBar {
  Header(BuildContext context)
      : super(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.5,
          title: Row(
            children: [
              Container(
                child: Image.asset('assets/images/logo.png'),
                padding: EdgeInsets.only(right: 5),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "search...",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    width: 260,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(240, 240, 240, 1),
                      border: Border(),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
              Container(
                child: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.grey,
                ),
                padding: EdgeInsets.only(left: 10),
              ),
              Container(
                child: Icon(
                  Icons.insert_emoticon,
                  size: 20,
                  color: Colors.grey,
                ),
                padding: EdgeInsets.only(left: 10),
              )
            ],
          ),
        );
}
