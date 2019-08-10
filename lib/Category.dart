import 'package:flutter/material.dart';
final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget{
  final String name= "Cake";
  final ColorSwatch color = Colors.green;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    assert(debugCheckHasMaterial(context));
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color[50],
          splashColor: color[100],
          onTap: (){
            print('I was tapped !');
          },
          child: Padding(padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child:Icon(Icons.cake),
              ),
              Center(
            child: Text(name, textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline,),)
            ],
          ),),
        ),
      ),
    );
      /*Row(
      children: <Widget>[
        Expanded( child: FittedBox(fit: BoxFit.contain, child: const FlutterLogo(),),),
        Expanded(child: Text('Craft beautiful UI', textAlign: TextAlign.center,),),
      ],
    );*/
  }

}
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello Rectangle'),
      ),
      body: Category(),
    ),));
}

/*
Center(
child: Container(
color: Colors.greenAccent,
height: 100.0,
width: 70.0,
child: Center(
child: Text('Hello !', style: TextStyle(fontSize: 24.0)),
),
),
);*/
