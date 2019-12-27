import 'package:flutter/material.dart';

// code from:  https://github.com/whatsupcoders/Flutter-Chip-Widget/tree/master/lib
void main(){
  runApp(new MaterialApp(home: InputChipDisplay()));
}

class FilterChipDisplay extends StatefulWidget {
  @override
  _FilterChipDisplayState createState() => _FilterChipDisplayState();
}

class _FilterChipDisplayState extends State<FilterChipDisplay> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: new Icon( Icons.timer, color: Colors.white,),
            onPressed: () {}),
        title: Text("Filter Result", style: TextStyle(color: Colors.white,),),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Column(
        children: <Widget>[
          Align
            (
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer("Choose amenities"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Align
              (
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
                  )
              ),
            ),
          ),
          Divider(color: Colors.blueGrey, height: 10.0,),
          Align
            (
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer('Choose Neighborhoods'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Align
              (
              alignment: Alignment.centerLeft,
              child: Container(
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    filterChipWidget(chipName: 'Upper Manhattan'),
                    filterChipWidget(chipName: 'Manhattanville'),
                    filterChipWidget(chipName: 'Harlem'),
                    filterChipWidget(chipName: 'Washington Heights'),
                    filterChipWidget(chipName: 'Inwood'),
                    filterChipWidget(chipName: 'Morningside Heights'),
                  ],
                ),
              ),
            ),
          ),
          Divider(color: Colors.blueGrey, height: 10.0,),
        ],
      ),
    );
  }

}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );
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
      labelStyle: TextStyle(color: Color(0xff6200ee),fontSize: 16.0,fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            30.0),),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xffeadffd),);
  }
}

//   Choice Chip

class ChoiceChipDisplay extends StatefulWidget {
  @override
  _ChoiceChipDisplayState createState() => _ChoiceChipDisplayState();
}

class _ChoiceChipDisplayState extends State<ChoiceChipDisplay> {
  List<String> chipList = [
    "Recycled",
    "Vegetarian",
    "Skilled",
    "Energetic",
    "Friendly",
    "Luxurious"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.timer_3,
              color: Colors.black,
            ),
            onPressed: () {}),
        title: Text(
          "Synonym Flashcards",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.note,
                color: Colors.black,
              ),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: Color(0x802196F3),
          child: Container(
            width: 380,
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  //color: new Color(0xffffc107),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xffffc107),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Question 3',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      'Find the synonym of',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      'Adroit',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 42.0,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        choiceChipWidget(chipList),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Container(
                    child: RaisedButton(
                        color: Color(0xffffbf00),
                        child: new Text(
                          'Next',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class choiceChipWidget extends StatefulWidget {
  final List<String> reportList;

  choiceChipWidget(this.reportList);

  @override
  _choiceChipWidgetState createState() => new _choiceChipWidgetState();
}

class _choiceChipWidgetState extends State<choiceChipWidget> {
  String selectedChoice = "";

  _buildChoiceList() {
    List<Widget> choices = List();
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          labelStyle: TextStyle(
              color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: Color(0xffededed),
          selectedColor: Color(0xffffc107),
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}

//  Action Chip

class ActionChipDisplay extends StatefulWidget {

  @override
  _ActionChipDisplayState createState() => _ActionChipDisplayState();
}

class _ActionChipDisplayState extends State<ActionChipDisplay> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
          //
        }),
        title: Text('Home Settings'),
        actions: <Widget>[
          IconButton(icon: Icon(
              Icons.cloud), onPressed: () {
            //
          }),
        ],
      ),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 260.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1521782462922-9318be1cfd04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80")
                      )
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text('Welcome Home',
                  style: TextStyle(color: Colors.black, fontSize: 24.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text('Monday 18:00 PM, Mostly Sunny',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 20.0),),
              ),
            ),
            Divider(color: Colors.blueGrey, height: 10.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align
                (
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 10.0,
                  children: <Widget>[
                    ActionChip(
                      avatar: Icon(
                        Icons.wb_sunny, color: Color(0xffffc107),),
                      label: Text('Turn on Lights'),
                      backgroundColor: Color(0xffededed),
                      labelStyle: TextStyle(color: Color(0xff000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            // return object of type Dialog
                            return AlertDialog(
                              title: Text('Choose the Color'),
                              actions: <Widget>[
                                new FlatButton(
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                new FlatButton(
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },

                                ),
                                new FlatButton(
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: new BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),

                    ActionChip(
                      avatar: Icon(
                        Icons.cloud_circle, color: Color(0xff4422ee),),
                      backgroundColor: Color(0xffededed),
                      labelStyle: TextStyle(color: Color(0xff000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                      label: Text('Set Alarm'),
                      onPressed: () {
                        //set Alarm
                      },
                    ),
                    ActionChip(
                      avatar: Icon(
                          Icons.volume_up,
                          color: Color(0xffe52d27)),
                      backgroundColor: Color(0xffededed),
                      labelStyle: TextStyle(color: Color(0xff000000),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                      label: Text('Call Mike'),
                      onPressed: () {
                        //Call Mike
                      },
                    ),
                  ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  Input Chip

class InputChipDisplay extends StatefulWidget {
  @override
  _InputChipDisplayState createState() => _InputChipDisplayState();
}

class _InputChipDisplayState extends State<InputChipDisplay> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Column(
        children: <Widget>[
          _myAppBar(),
          Align
            (
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _toContainer(),
            ),
          ),
          Divider(color: Colors.blueGrey, height: 10.0,),
          Align
            (
            alignment: Alignment.centerLeft,
            child: _subjectContainer(),
          ),
          Divider(color: Colors.blueGrey, height: 10.0,),
          Align
            (
            alignment: Alignment.centerLeft,
            child: _messageContainer(),
          ),
        ],
      ),
    );
  }

  Widget _messageContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          'Message',
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
      ),
    );
  }


  Widget _myAppBar() {
    return Container(
      height: 70.0,
      width: MediaQuery
          .of(context)
          .size
          .width,

      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            const Color(0xff662d8c),
            const Color(0xffed1e79),
          ],
          begin: Alignment.centerRight,
          end: new Alignment(-1.0, -1.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:Container(child:IconButton(
                      icon: Icon(Icons.arrow_left,color: Colors.white,), onPressed: () {
                    //
                  }),),),
                Expanded(
                  flex: 5,
                  child:Container(child:Text('Compose', style:
                  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0
                  ),),),),
                Expanded(
                  flex: 1,
                  child:Container(child:IconButton(
                      icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed: () {
                    //
                  }),),),
              ],)
        ),
      ),
    );
  }

  Widget _toContainer() {
    return Wrap(
      spacing: 5.0,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 8.0),
          child: Container(
            child: Text(
              'To',
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),),
        ),
        Container(
          child: _profileChips("Scott Hill",
              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
        ),
        Container(
          child: _profileChips("Nick James",
              "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
        ),
        Container(
          child: _profileChips("Josh Wells",
              "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
        ),
      ],
    );
  }


  Widget _subjectContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          'Subject',
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
      ),
    );
  }

  Widget _profileChips(String myName, String myImage) {
    return InputChip(
      avatar: CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit:BoxFit.fill,
                image:NetworkImage(myImage),
              )
          ),
        ),
      ),
      label: Text(myName),
      labelStyle: TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold),
      onPressed: (){

      },
      onDeleted: (){

      },
    );
  }
}