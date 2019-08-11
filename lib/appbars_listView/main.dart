import 'package:flutter/material.dart';
import 'package:flutter_first/appbars_listView/CategoryScreen.dart';

void main(){
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false,
    title: 'Unit ',
      home: CategoryScreen(),
    );
  }
}