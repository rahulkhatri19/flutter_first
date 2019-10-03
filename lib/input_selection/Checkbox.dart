import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: CheckboxApp()));
}

class CheckboxApp extends StatefulWidget {
  @override
  _checkBox createState() => new _checkBox();
}

class _checkBox extends State<CheckboxApp> {
  bool checkBool = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Checkbox App"),
      ),
      body: new Center(
        child: new Checkbox(
            value: checkBool,
            onChanged: (bool cb) {
              setState(() {
                checkBool = cb;
                print(checkBool);
              });
            }),
      ),
    );
  }
}
