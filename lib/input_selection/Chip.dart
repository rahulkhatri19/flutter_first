import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: ChipApp()));
}

class ChipApp extends StatefulWidget {
  @override
  _chip createState() => new _chip();
}

class _chip extends State<ChipApp> {
  bool checkBool = false;
  String selectedChoice = "";
  final GlobalKey<ScaffoldState> sKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: sKey,
      appBar: new AppBar(
        title: new Text("Chip App"),
      ),
      body: new Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Filter Chip",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  child: Wrap(
                spacing: 5.0,
                runSpacing: 3.0,
                children: <Widget>[
                  filterChipWidget(chipName: 'Elevator'),
                  filterChipWidget(chipName: 'Washer/Dryer'),
                  filterChipWidget(chipName: 'Fireplace'),
                  filterChipWidget(chipName: 'Dogs ok'),
                  filterChipWidget(chipName: 'Cats ok'),
                  filterChipWidget(chipName: 'Wheelchair access'),
                ],
              )),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Choice Chip",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: <Widget>[
                /*reportList.forEach((item){

                })*/
                ChoiceChip(
                  label: Text("Recycled"),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Color(0xffededed),
                  selectedColor: Color(0xffffc107),
                  selected: selectedChoice == "Recycled",
                  onSelected: (selected) {
                    setState(() {
                      selectedChoice = "Recycled";
                    });
                  },
                ),
                ChoiceChip(
                  label: Text("Skilled"),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Color(0xffededed),
                  selectedColor: Color(0xffffc107),
                  selected: selectedChoice == "Skilled",
                  onSelected: (selected) {
                    setState(() {
                      selectedChoice = "Skilled";
                    });
                  },
                ),
                ChoiceChip(
                  label: Text("Friendly"),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Color(0xffededed),
                  selectedColor: Color(0xffffc107),
                  selected: selectedChoice == "Friendly",
                  onSelected: (selected) {
                    setState(() {
                      selectedChoice = "Friendly";
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Action Chip",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ActionChip(
            avatar: Icon(
              Icons.cloud_circle,
              color: Color(0xff4422ee),
            ),
            backgroundColor: Color(0xffededed),
            labelStyle: TextStyle(
                color: Color(0xff000000),
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
            label: Text('Set Alarm'),
            onPressed: () {
              sKey.currentState.showSnackBar(
                  SnackBar(content: Text("Tell me time for Alarm")));
            },
          ),
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Input Chip",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          InputChip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/google_play_100.png'),
                    )),
              ),
            ),
            label: Text("Google Play"),
            labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
            onPressed: () {
              print("Hi I was Pressed");
            },
            onDeleted: () {
              print("You deleted me");
            },
          )
        ],
      ),
      /* new Center(
        child: new Image(image: Image.asset()),
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
