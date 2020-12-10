import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewShiftDetails extends StatefulWidget {
  @override
  _NewShiftDetailsState createState() => _NewShiftDetailsState();
}

class _NewShiftDetailsState extends State<NewShiftDetails> {
  static var _priorities = ["High", "Low"];

  TextEditingController titleController = TextEditingController();
  TextEditingController commentsController = TextEditingController();

  // TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: moveToLastScreen,
      child: Scaffold(
        appBar: AppBar(
          title: Text("New Shift"),
          leading: IconButton(icon: Icon(Icons.keyboard_backspace_rounded),
            onPressed: (){
              moveToLastScreen();
            },),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                title: DropdownButton(
                  items: _priorities.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem));
                  }).toList(),
                  value: "Low",
                  onChanged: (userValue) {
                    setState(() {
                      print("Dropdown");
                    });
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: titleController,
                onChanged: (title) {
                  print("title changed");
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RaisedButton(
                    child: Text("Save"),
                    color: Colors.green,
                    onPressed: () {
                      print("save Pressed");
                    },
                  ),
                  RaisedButton(
                    child: Text("Cancel"),
                    color: Colors.orangeAccent,
                    onPressed: () {
                      print("Cancel Pressed");
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Future<bool> moveToLastScreen() async{
    // await showDialog or Show add banners or whatever
    print("pop clicked");
    Navigator.pop(context);
    return true;
  }
}
