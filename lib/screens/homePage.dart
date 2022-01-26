import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}






class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _increment = 0;
  var _decrement = 100;

  void Increment() {
    setState(() {
      _increment++;
    });
  }

  void Decrement() {
    setState(() {
      _decrement--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_increment',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: Decrement,
              child: Text('Decrement',
                  style: Theme.of(context).textTheme.headline6),
            ),
            Text(
              '$_decrement',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: Increment,
          tooltip: 'Increment',
          backgroundColor: Colors.black,
          child: Icon(Icons.add),
          elevation: 10,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
    );
  }
}