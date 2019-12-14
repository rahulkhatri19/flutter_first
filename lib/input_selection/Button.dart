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
          new IconButton(icon: new Icon(Icons.add_shopping_cart) , onPressed: (){
            buttonMethod('Icon Button was Pressed');
          }),
          new Text(_text),
          new Expanded(
              child: new Align(
                  alignment: Alignment.bottomLeft,
                  child: new Container(
//                    decoration: BoxDecoration(color: Colors.lightBlue),
                    margin: EdgeInsets.only(left: 16, bottom: 16),
                    child: new FloatingActionButton(
                        onPressed: () {
                          buttonMethod("FloatingActionButton was Pressed");
                        },
                        child: Icon(Icons.add_comment),
                        backgroundColor: Colors.deepPurple),
                  ))),
        ],
      ),
      /*  floatingActionButton: FloatingActionButton(
          onPressed: () {
            buttonMethod("FloatingActionButton was Pressed");
          },
          child: Icon(Icons.add_comment),
          backgroundColor: Colors.deepPurple),*/
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            buttonMethod("Extended FloatingActionButton was Pressed");
          },
          label: new Text("Approve"),
          icon: Icon(Icons.thumb_up),
          backgroundColor: Colors.deepOrange),
    );
  }
}
