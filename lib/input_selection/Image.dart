import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: ImageApp()));
}

class ImageApp extends StatefulWidget {
  @override
  _image createState() => new _image();
}

class _image extends State<ImageApp> {
  bool checkBool = false;

//   note : for network image give internet permission in AndroidManifest.xml
//  android/app/src/debug/AndroidManifest.xml : <manifest ...>  <uses-permission android:name="android.permission.INTERNET" /> ... </manifest>

//  note: for assets need to create a directory with name 'assets' and mention it in pubspec.yaml file.

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Image App"),
      ),
      body: new Column(
        children: <Widget>[
//         new Image(
//              image: NetworkImage(
//                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
//          new Image(image: AssetImage('assets/google_play_100.png')),
          new Image.asset('assets/google_play_100.png'),
          new Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')
        ],
      ),
      /* new Center(
        child: new Image(image: Image.asset()),
      ),*/
    );
  }
}
