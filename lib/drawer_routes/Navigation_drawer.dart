import 'package:flutter/material.dart';
import 'package:flutter_first/drawer_routes/Page.dart';

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
            new UserAccountsDrawerHeader(
              accountName: new Text('Rahul Khatri'),
              accountEmail: new Text('rahul@khatri.com'),
              currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.deepOrangeAccent,
                  child: new Text('R')),
              decoration: BoxDecoration(color: Colors.cyan),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                    backgroundColor: Colors.deepPurple, child: new Text('K')),
                new CircleAvatar(
                    backgroundColor: Colors.lightGreenAccent,
                    child: new Text('Y'))
              ],
            ),
            new ListTile(
              title: new Text('Page 1'),
              trailing: new Icon(Icons.pages),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new PageApp('Page 1'))),
            ),
            new ListTile(
              title: new Text('Page 2'),
              trailing: new Icon(Icons.print),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new PageApp('Page 2'))),
            ),
            new ListTile(
              title: new Text('App Section'),
              trailing: new Icon(Icons.apps),
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
