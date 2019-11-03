import 'package:flutter/material.dart';
import 'package:flutter_first/appbars/Category.dart';

final _backgroundColor = Colors.green[100];
class CategoryScreen extends StatelessWidget{
  const CategoryScreen();
  static const _categoryName = <String>[
    'Length', 'Volume', 'Mass', 'Time',
    'Didital Storage', 'Energy', 'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal, Colors.orange, Colors.pinkAccent, Colors.blueAccent,
    Colors.yellow, Colors.greenAccent, Colors.pinkAccent, Colors.red,
  ];
  @override
   Widget _buildCategoryWiggets(List<Widget> category){

    return ListView.builder(itemBuilder: (BuildContext context, int index)
    => category[index],
    itemCount: category.length,);
  }

  @override
  Widget build(BuildContext context) {

    final categories = <Category>[];

    for( var i= 0; i< _categoryName.length; i++){
      categories.add(Category(
        name: _categoryName[i],
        color: _baseColors[i],
        iconLocation: Icons.cake,
      ));
    }

    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWiggets(categories),
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text('Unit Converter',
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 30.0,
        ),),
      centerTitle: true,
      backgroundColor: Colors.green,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}