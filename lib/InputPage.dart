import 'package:flutter/material.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(Color(0xff1d1f33)),
                  ),
                  Expanded(
                    child: ReusableCard(Color(0xff1d1f33)),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ReusableCard(Color(0xff1d1f33)),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(Color(0xff1d1f33)),
                  ),
                  Expanded(
                    child: ReusableCard(Color(0xff1d1f33)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Text('Press me'),
                color: Colors.pink,
              ),
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(this.color);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
