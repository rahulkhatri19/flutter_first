import 'package:flutter/material.dart';

//  Overlapping weights.
void main() {
  runApp(new MaterialApp(home: StackApp()));
}

class StackApp extends StatefulWidget {
  @override
  stackApp createState() => stackApp();
}

class stackApp extends State<StackApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(alignment: Alignment.center, children: <Widget>[
        new Card(
            color: Colors.amber,
            child: new Padding(padding: const EdgeInsets.all(250.0))),
        new Card(
            color: Colors.blue,
            child: new Padding(padding: const EdgeInsets.all(150.0))),
        new Card(
            color: Colors.brown,
            child: new Padding(padding: const EdgeInsets.all(100.0))),
        new Card(
            color: Colors.cyan,
            child: new Padding(padding: const EdgeInsets.all(50.0))),
        new Card(
            color: Colors.red,
            child: new Padding(padding: const EdgeInsets.all(25.0)))
      ]),
    );
  }
}
