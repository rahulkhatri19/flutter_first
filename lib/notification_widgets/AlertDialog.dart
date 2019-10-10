import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: AlertDialogApp()));
}

class AlertDialogApp extends StatefulWidget {
  @override
  _alert createState() => _alert();
}

class _alert extends State<AlertDialogApp> {
  void alertMethod() {
    showDialog(
        context: context,
        builder: (BuildContext context) => new AlertDialog(
          title: new Text('Warning'),
          content: new Text('Hi this is Flutter Alert Dialog'),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            alertMethod();
          },
          child: new Text("Press to See Alert Dialog"),
        ),
      ),
    );
  }
}
