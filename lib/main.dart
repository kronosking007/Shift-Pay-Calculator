import 'package:flutter/material.dart';
import 'package:shiftpay/pages/homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Shift Pay",
        home: HomePage(),
      ),
    );
  }
}
