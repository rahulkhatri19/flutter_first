import 'package:flutter/material.dart';

class PageApp extends StatelessWidget{

  final String text;
  PageApp(this.text)

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Page 1'),
      ),
      body: new Center(
        child: new Text(text),
      ),
    );
  }

}