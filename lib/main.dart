import 'package:flutter/material.dart';

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

class InputPAge extends StatefulWidget {
  @override
  _InputPAgeState createState() => _InputPAgeState();
}

class _InputPAgeState extends State<InputPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Center(
        child: Text("Body Text"),
      ),
    );
  }
}
