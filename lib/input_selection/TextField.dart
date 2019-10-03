import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: TextFieldApp()));
}

class TextFieldApp extends StatefulWidget {
  @override
  _textApp createState() => new _textApp();
}

class _textApp extends State<TextFieldApp> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.lime, title: new Text("Text Field App")),
      body: new Column(
        children: <Widget>[
          new TextField(
            /* onChanged: (String text){  //  on Changed ie while entering value real time.
              setState(() {
                _text = text;
              });
            },*/
            onSubmitted: (String text) {
              // on submitted ie when submit
              setState(() {
                _text = text;
              });
            },
          decoration: new InputDecoration(hintText: "Enter some text", labelText: "Text Label"),),
          new Text(_text)
        ],
      ),
    );
  }
}
