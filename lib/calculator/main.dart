import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow, // Toolbar color
      ),
      home: new MyHomePage(title: 'Calculator'), // toolbar Text
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String output = "0", _output = "0", operand = "";
  double num1 = 0.0, num2 = 0.0;

  buttonPressed(String buttonText) {
//    print(buttonText);
    if (buttonText == "AC") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (buttonText == "X" ||
        buttonText == "/" ||
        buttonText == "+" ||
        buttonText == "-") {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == ".") {
      if (buttonText.contains(".")) {
        print("Alredy Contain Decimal");
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);
      if (operand == "X") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }
    print(_output);
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget buttonCustom(String buttonText) {
    return new Expanded(
      child: new OutlineButton(
        // MaterialButton is also good
        padding: new EdgeInsets.all(24.0),
        child: new Text(
          buttonText,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),

        onPressed: () => buttonPressed(buttonText),
//        color: Colors.blueGrey, // button color
//        textColor: Colors.white, // button text color
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
//    String stOutput = "0";
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
                alignment: Alignment.centerRight,
                padding:
                    new EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
                child: new Text(
                  output,
                  style: new TextStyle(
                      fontSize: 48.0, fontWeight: FontWeight.bold),
                )),
            new Expanded(child: new Divider()),
            new Column(
              children: [
                new Row(
                  children: [
                    buttonCustom("AC"),
                    buttonCustom("<-"),
                    buttonCustom("+/-"),
                    buttonCustom("/")
                  ],
                ),
                new Row(
                  children: [
                    buttonCustom("7"),
                    buttonCustom("8"),
                    buttonCustom("9"),
                    buttonCustom("X")
                  ],
                ),
                new Row(
                  children: [
                    buttonCustom("4"),
                    buttonCustom("5"),
                    buttonCustom("6"),
                    buttonCustom("-")
                  ],
                ),
                new Row(
                  children: [
                    buttonCustom("1"),
                    buttonCustom("2"),
                    buttonCustom("3"),
                    buttonCustom("+")
                  ],
                ),
                new Row(
                  children: [
                    buttonCustom("%"),
                    buttonCustom("0"),
                    buttonCustom("."),
                    buttonCustom("=")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
