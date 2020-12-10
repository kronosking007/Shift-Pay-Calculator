import 'package:flutter/material.dart';
import 'package:shiftpay/driver/dimensions.dart';
import 'package:intl/intl.dart';
import 'package:shiftpay/driver/stringvalues.dart';
import 'package:shiftpay/main.dart';

class ShiftInput extends StatefulWidget {
  ShiftInput({Key key}) : super(key: key);

  @override
  _ShiftInputState createState() => _ShiftInputState();
}

class _ShiftInputState extends State<ShiftInput> {
  // var format = DateFormat("HH:mm");
  // * var one = format.parse("10:40");
  // * var two = format.parse("18:20");
  // * print("${two.difference(one)}"); // prints 7:40
  // TextEditingController _startTimeController = TextEditingController();
  // DateTime _dateNow = DateTime.now();
  TimeOfDay _timeNow;

  @override
  void initState() {
    super.initState();
    // _timeNow = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(

       ),
     );
    //   appBar: AppBar(
    //     title: Text("Shift Pay"),
    //     centerTitle: true,
    //     elevation: elevation,
    //   ),
    //   body: Center(
    //     child: Container(
    //       padding: EdgeInsets.all(screenPadding),
    //       child: Column(
    //         children: [
    //           ListTile(
    //             title: Text("current time : ${_timeNow.format(context)}"),
    //             leading: Icon(Icons.timer),
    //           ),
    //           RaisedButton(
    //               child: new Text('Select Date and Time'),
    //               onPressed: () {
    //                 _selectDateAndTime(context);
    //               })
    //
    //           // *Container(
    //           //   height: 50,
    //           //   color: Colors.amber,
    //           // ),
    //           // *Container(
    //           //   height: 80,
    //           //   color: Colors.red,
    //           // )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

}
