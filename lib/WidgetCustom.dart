import 'package:flutter/material.dart';
import 'Widget.dart';

void main(){
  runApp(new MaterialApp(title: 'Custom Widget', home: WidgetApp()));
}
// custom widget from another class
class WidgetApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new customWidget(),
    );
  }
}
