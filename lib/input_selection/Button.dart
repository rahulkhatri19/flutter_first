import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: ButtonApp()));
}

class ButtonApp extends StatefulWidget {
  @override
  _button createState() => new _button();
}

class _button extends State<ButtonApp> {
  String _text = '';

  void buttonMethod(value) {
    setState(() {
      _text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Button App"),
      ),
      body: new Column(
        children: <Widget>[
          new RaisedButton(
              onPressed: () {
                buttonMethod('Raised Button was Pressed');
              },
              child: new Text('Raised Button')),
          new FlatButton(
              onPressed: () {
                buttonMethod('Flat Button was Pressed');
              },
              child: new Text('Flat Button')),
          new Text(_text)
        ],
      ),
    );
  }
}
