import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'GenderIcon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const borderButtonHeight = 60.0,
    hexColorValue = Color(0xff1d1f33),
    bottomButtonColor = Colors.pink;

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
                    child: ReusableCard(
                      color: hexColorValue,
                      child: GenderIcon(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: hexColorValue,
                      child: GenderIcon(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ReusableCard(color: hexColorValue),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: hexColorValue),
                  ),
                  Expanded(
                    child: ReusableCard(color: hexColorValue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: FlatButton(
                height: borderButtonHeight,
                onPressed: () {},
                child: Text('Press me'),
                color: bottomButtonColor,
              ),
            )
          ],
        ));
  }
}


