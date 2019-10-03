import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: RadioButtonApp()));
}

class RadioButtonApp extends StatefulWidget {
  @override
  _radio createState() => new _radio();
}

class _radio extends State<RadioButtonApp> {
  int radioValue = 0;

  void radioMethod(value) {
    setState(() {
      radioValue = value;
      print(radioValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Radio Button App'),
      ),
      body: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Radio(
              value: 1,
              groupValue: radioValue,
              onChanged: (int rV) {
                radioMethod(rV);
              }),
          new Radio(
              value: 2,
              groupValue: radioValue,
              onChanged: (int rV) {
                radioMethod(rV);
              }),
          new Radio(
              value: 3,
              groupValue: radioValue,
              onChanged: (int rV) {
                radioMethod(rV);
              })
        ],
      )),
    );
  }
}
