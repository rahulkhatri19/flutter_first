import 'package:flutter/material.dart';

class customWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.cyan,
      child: new Container(
        margin: const EdgeInsets.all(25.0),
        color: Colors.orange,
        child: new Container(
          margin: const EdgeInsets.all(40.0),
          color: Colors.brown,
          child: new Container(
            margin: const EdgeInsets.all(40.0),
            color: Colors.blue,
            child: customInlineWidget(),
          ),
        ),
      ),
    );
  }
//   Custom widget in same class
  Widget customInlineWidget(){
    return new Container(
      margin: const EdgeInsets.all(40.0),
      color: Colors.redAccent,
    );
  }
}