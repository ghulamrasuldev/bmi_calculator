import 'package:flutter/material.dart';
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

class GenderIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  GenderIcon({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  final Color color;
  Widget child;
  ReusableCard({@required this.color, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
