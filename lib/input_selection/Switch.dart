import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: SwitchApp()));
}

class SwitchApp extends StatefulWidget {
  @override
  _switch createState() => new _switch();
}

class _switch extends State<SwitchApp> {
  bool swBool = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text('Slider App'),
        ),
        body: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Switch(
                value: swBool,
                onChanged: (bool sw) {
                  setState(() {
                    swBool = sw;
                  });
                })
          ],
        )));
  }
}
