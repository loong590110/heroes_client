import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage(this._themeData);

  final ThemeData _themeData;

  @override
  _HomePageState createState() => _HomePageState(_themeData);
}

class _HomePageState extends State<HomePage> {
  _HomePageState(this._themeData);

  int _counter = 0;
  ThemeData _themeData;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeData.scaffoldBackgroundColor,
        elevation: 0.5,
        title: Row(
          children: [
            Container(
              child: Image.asset('assets/images/logo.png'),
              padding: EdgeInsets.only(right: 5),
            ),
            Container(
              child: Text(
                "Home",
                style: TextStyle(color: Colors.deepOrangeAccent),
              ),
              padding: EdgeInsets.only(left: 10),
            ),
            Container(
              child: Text(
                "Movie",
                style: TextStyle(color: Colors.deepOrangeAccent),
              ),
              padding: EdgeInsets.only(left: 10),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
