import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: SignUp()));
}

class SignUp extends StatefulWidget {
  @override
  _signUp createState() => new _signUp();
}

class _signUp extends State<SignUp> {
  int radioValue = 0;
  double sliderValue = 0;
  bool switchValue = false;
  bool checkboxValue = false;
  final GlobalKey<ScaffoldState> sKey = new GlobalKey<ScaffoldState>();

  void radioMethod(value) {
    setState(() {
      radioValue = value;
      print(radioValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: sKey,
      appBar: new AppBar(
        title: new Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            new Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Image.asset('assets/google_play_100.png'),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Name : ",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        )),
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: new InputDecoration(
                            hintText: "Enter Full Name",
                            labelText: "Full Name"),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Profession :",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        )),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Radio(
                                value: 1,
                                groupValue: radioValue,
                                onChanged: (int rv) {
                                  radioMethod(rv);
                                }),
                            Text(
                              "Professional",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Radio(
                                value: 2,
                                groupValue: radioValue,
                                onChanged: (int rv) {
                                  radioMethod(rv);
                                }),
                            Text(
                              "Student",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Intrest in \nLanguage :",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        )),
                    Container(
                      width: 240,
                      child: Wrap(
                        spacing: 5.0,
                        runSpacing: 3.0,
                        children: <Widget>[
                          filterChipWidget(chipName: 'Python'),
                          filterChipWidget(chipName: 'Java'),
                          filterChipWidget(chipName: 'Kotlin'),
                          filterChipWidget(chipName: 'Dart'),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Rate your Self \nin Dart :",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        )),
                    new Slider(
                        value: sliderValue,
                        min: 0,
                        max: 5,
                        divisions: 5,
                        onChanged: (double dbVal) {
                          setState(() {
                            sliderValue = dbVal;
                          });
                        }),
                    Text(sliderValue.toString())
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Opt for weekly Newsletter :",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        )),
                    Switch(
                        value: switchValue,
                        onChanged: (bool sv) {
                          setState(() {
                            switchValue = sv;
                          });
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                        value: checkboxValue,
                        onChanged: (bool cv) {
                          setState(() {
                            checkboxValue = cv;
                          });
                        }),
                    Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "I accept Term and Condition",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: RaisedButton(
                    onPressed: () {
                      sKey.currentState.showSnackBar(SnackBar(
                          content: Text("Hi! You Just Submited Details")));
                    },
                    color: Colors.deepPurpleAccent,
                    child: Text(
                      "Submit Details",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ), /*new Column(
        children: <Widget>[
         */ /* Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Image.asset('assets/google_play_100.png'),
            ),
          ),*/ /*
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Name : ",
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  )),
              Container(
                width: 200,
                child: TextField(
                  decoration: new InputDecoration(
                      hintText: "Enter Full Name", labelText: "Full Name"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Profession :",
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  )),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Radio(
                          value: 1,
                          groupValue: radioValue,
                          onChanged: (int rv) {
                            radioMethod(rv);
                          }),
                      Text(
                        "Professional",
                        style: TextStyle(color: Colors.black, fontSize: 16.0),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                          value: 2,
                          groupValue: radioValue,
                          onChanged: (int rv) {
                            radioMethod(rv);
                          }),
                      Text(
                        "Student",
                        style: TextStyle(color: Colors.black, fontSize: 16.0),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Intrest in \nLanguage :",
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  )),
              Container(
                width: 240,
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 3.0,
                  children: <Widget>[
                    filterChipWidget(chipName: 'Python'),
                    filterChipWidget(chipName: 'Java'),
                    filterChipWidget(chipName: 'Kotlin'),
                    filterChipWidget(chipName: 'Dart'),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Rate your Self \nin Dart :",
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  )),
              new Slider(value: sliderValue, min: 0, max: 5, divisions: 5, onChanged: (double dbVal){
                setState(() {
                  sliderValue = dbVal;
                });
              }),
              Text(sliderValue.toString())
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Opt for weekly Newsletter :",
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  )),
              Switch(value: switchValue, onChanged: (bool sv){
                setState(() {
                  switchValue = sv;
                });
              })
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(value: checkboxValue, onChanged: (bool cv){
                setState(() {
                  checkboxValue = cv;
                });
              }),
              Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "I accept Term and Condition",
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  )),
            ],
          ),
          RaisedButton(onPressed: (){
            sKey.currentState.showSnackBar(SnackBar(content: Text("Hi! You Just Submited Details")));
          },
            color: Colors.deepPurpleAccent,
          child: Text("Submit Details", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),)
        ],
      ),*/
    );
  }
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Color(0xff6200ee),
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xffeadffd),
    );
  }
}
