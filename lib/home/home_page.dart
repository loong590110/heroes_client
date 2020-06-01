import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:heroes_client/theme/theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.scaffoldBackgroundColor,
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
