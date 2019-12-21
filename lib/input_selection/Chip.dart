import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: ChipApp()));
}

class ChipApp extends StatefulWidget {
  @override
  _chip createState() => new _chip();
}

class _chip extends State<ChipApp> {
  bool checkBool = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Chip App"),
      ),
      body: new Column(
        children: <Widget>[
          new Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text('AB'),
              ),
              label: Text('Aaron Burr')),
          new InputChip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreenAccent,
              child: Text('CD'),
            ),
            label: Text('Aaron Burr'),
            onPressed: () {
              print("I am the one thing in life.");
            },
          ),
          new FilterChip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text('EF'),
              ),
              label: Text('Aaron Burr'),
              onSelected: (bool value) {}),
          new ActionChip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreenAccent,
                child: Text('HI'),
              ),
              label: Text('Aaron Burr'),
            onPressed:  () {
              print("I am the one thing in life.");
            },
          ),
        ],
      ),
      /* new Center(
        child: new Image(image: Image.asset()),
      ),*/
    );
  }
}
