import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: NavigationDrawerApp()));
}

class NavigationDrawerApp extends StatefulWidget {
  @override
  _navigationDrawer createState() => new _navigationDrawer();
}

class _navigationDrawer extends State<NavigationDrawerApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigation Drawer'),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text('Rahul Khatri'), accountEmail: new Text('rahul@khatri.com'),
            currentAccountPicture: new CircleAvatar(backgroundColor: Colors.deepOrangeAccent, child:  new Text('R')), decoration: BoxDecoration(color: Colors.cyan),),

            new ListTile(
              title: new Text('App Section'),
              trailing: new Icon(Icons.apps),
            ),
            new ListTile(
              title: new Text('Print Text'),
              trailing: new Icon(Icons.print),
            ),
            new ListTile(
              title: new Text('Take Photo'),
              trailing: new Icon(Icons.add_a_photo),
            ),
            new ListTile(
              title: new Text('Take Photo'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
