import 'package:flutter/material.dart';
import 'package:shiftpay/driver/stringvalues.dart';

class PayRatesPage extends StatefulWidget {
  @override
  _PayRatesPageState createState() => _PayRatesPageState();
}

class _PayRatesPageState extends State<PayRatesPage> {
  List payRates = [] ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(strPayRateList),
      ),
      body: ListView.builder(

      itemCount: payRates.length,
        itemBuilder: (context, index){
        return Card(
          child: ListTile(
            title: Text('Holiday Pay'),
            onTap: (){},

          ),
        );
        },),
    );
  }
}
