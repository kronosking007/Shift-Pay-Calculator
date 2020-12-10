import 'package:flutter/material.dart';
import 'package:shiftpay/driver/dimensions.dart';
import 'package:shiftpay/driver/stringvalues.dart';
import 'package:shiftpay/pages/pay_rates_page.dart';
import 'package:shiftpay/pages/shiftinput.dart';
import 'package:weekday_selector/weekday_selector.dart';
import 'package:shiftpay/pages/home_body';

import 'newShift.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(strAppTitle),
        centerTitle: true,

      ),
      body: getListBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          navigateToShiftDetails();

        },
        tooltip: 'Add New',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getListBody() {
    return ListView.builder(
        itemCount: counter,
        itemBuilder: (BuildContext context , int position){
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text("DUmmy title"),
              subtitle: Text("DUmmy sub-title"),
              trailing: Icon(Icons.delete,color: Colors.grey,),
              onTap:() {
                print("Tapped");
              },
            ),
          );
        });
  }

  void navigateToShiftDetails(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>
        NewShiftDetails()));
    //TODO: Add custom names to each pages
  }


}

