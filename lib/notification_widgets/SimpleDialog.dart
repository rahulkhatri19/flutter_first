import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: SimpleDialogApp()));
}

class SimpleDialogApp extends StatefulWidget {
  _dialog createState() => _dialog();
}

class _dialog extends State<SimpleDialogApp> {
  SimpleDialog sd;

  void simpleMethod() {
    sd = new SimpleDialog(
      title: new Text('Hi am Simple Dialog'),
      children: <Widget>[
        new SimpleDialogOption(
          child: new Text('Yes'),
          onPressed: () {
            print('Yes');
          },
        ),
        new SimpleDialogOption(
          child: new Text('Close'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        new SimpleDialogOption(
          child: new Text('No'),
          onPressed: () {
            print('No');
          },
        )
      ],
    );

    showDialog(context: context, builder: (_) => sd);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            simpleMethod();
          },
          child: new Text('Hi i am Simple Dialog'),
        ),
      ),
    );
  }
}
