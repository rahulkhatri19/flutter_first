import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main() {
  runApp(new MaterialApp(home: TabBar()));
}

class TabBar extends StatefulWidget {
  @override
  _tabBar createState() => _tabBar();
}

class _tabBar extends State<TabBar> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Tab Bar"),
        bottom: new prefix0.TabBar(
          controller: _tabController,
          tabs: <Widget>[
            // Tab Bar
            new Tab(
              icon: new Icon(Icons.access_alarm),
              text: "Alarm Icon",
            ),
            new Tab(icon: new Icon(Icons.account_balance_wallet)),
            new Tab(
              /*icon: new Icon(Icons.account_balance),*/
              text: "Account Balance",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        // For text when tab item is selected
        controller: _tabController,
        children: <Widget>[
          new Center(
            child: new Text("Welcome to Alarm"),
          ),
          new Center(
            child: new Text("Welcome to wallet"),
          ),
          new Center(
            child: new Text("Welcome to Account Balance checkk"),
          ),
        ],
      ),
      bottomNavigationBar: new Material(
        //  Bottom Nav Bar
        color: Colors.deepOrangeAccent,
        child: new prefix0.TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.access_alarm)),
            new Tab(icon: new Icon(Icons.add_alert)),
            new Tab(icon: new Icon(Icons.account_balance_wallet)),
          ],
        ),
      ),
    );
  }
}
