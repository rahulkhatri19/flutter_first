import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main() {
  runApp(new MaterialApp(home: TabBar()));
}

class TabBar extends StatefulWidget {
  @override
  _tabBar createState() => _tabBar();
}

class _tabBar extends State<TabBar>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Tab Bar"),
        bottom: new prefix0.TabBar(
          controller: ,
          tabs: <Widget>[
            new Tab( new Icon(Icons.access_alarm))
          ],
        ),
      ),
    );
  }

}