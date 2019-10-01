import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main() {
  runApp(new MaterialApp(home: AppBar()));
}

class AppBar extends StatefulWidget {
  @override
  _appBar createState() => new _appBar();
}

class _appBar extends State<AppBar> {
  String mtext = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new prefix0.AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: new Text("App Bar"),
        elevation: 25.0,
        // Shadow effect in bottom
        titleSpacing: 75.0,
        //  Space from start for app bar text
        toolbarOpacity: 0.5,
        // App bar opacity/ transparency
        leading: new Icon(Icons.menu),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  mtext = "Hello I am back arrow";
                });
              }),
          new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () {
               setState(() {
                 mtext = "Hello I want to close app";
               });
              })
        ],
      ),
      body: new Center(
        child: new Text(mtext),
      ),
    );
  }
}
