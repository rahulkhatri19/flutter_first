import 'package:flutter/material.dart';

void main() {
  runApp(ListArray());
}

class ListArray extends StatefulWidget {
//  @override
//  listApp createState() => listApp();

  @override
  listArrayApp createState() => listArrayApp();
}

class listApp extends State<ListArray> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "List App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Its a App Bar"),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
                title: new Text("List Title Nice"),
                trailing: new Icon(Icons.arrow_back)),
            new ListTile(
                title: new Text("Title Two"),
                trailing: new Icon(Icons.arrow_back_ios)),
            new ListTile(
              title: new Text("Title Three with Icon"),
              trailing: new Icon(Icons.arrow_downward),
            )
          ],
        ),
      ),
    );
  }
}

class listArrayApp extends State<ListArray> {
  List<int> items = new List();

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      items.add(i);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "List Array App",
      home: new Scaffold(
          appBar: new AppBar(title: new Text("List App with Array")),
          body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return new ListTile(
                  title: new Text("List tile number: $index"),
                  trailing: new Icon(Icons.access_alarm));
            },
          )),
    );
  }
}
