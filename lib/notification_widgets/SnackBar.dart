import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: SnackBarApp()));
}

class SnackBarApp extends StatefulWidget {
  @override
  _snack createState() => _snack();
}

class _snack extends State<SnackBarApp> {

  final GlobalKey<ScaffoldState> sKey = new GlobalKey<ScaffoldState>();

  void snackMethod() {
    sKey.currentState.showSnackBar(
        new SnackBar(content: new Text('Hi I am Flutter Snack Bar')));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      key: sKey,
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            snackMethod();
          }, child: new Text("Press to See Snack bar"),),
      ),
    );
  }
}
