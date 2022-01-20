import 'package:card_horizontal/body.dart';
import 'package:card_horizontal/constants.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kSecondBackgroundColor
      ),
      home: Body(),
    );
  }
}
