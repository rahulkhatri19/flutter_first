import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: SignUp()));
}

class SignUp extends StatefulWidget {
  @override
  _signUp createState() => new _signUp();
}

class _signUp extends State<SignUp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Sign Up"),
      ),
      body: new Column(
        children: <Widget>[

        ],
      ),
    );
  }

}
