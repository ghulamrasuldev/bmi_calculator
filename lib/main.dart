import 'package:flutter/material.dart';
import 'InputPage.dart';
void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xff090C20),
          scaffoldBackgroundColor: Color(0xff090C20),
          textTheme: TextTheme(
            body1: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.grey.shade900),
      home: InputPAge(),
    );
  }
}

