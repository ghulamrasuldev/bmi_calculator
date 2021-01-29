import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'GenderIcon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const borderButtonHeight = 60.0,
    activeCardColor = Color(0xff1d1f33),
    inactiveCardColor = Color(0xff111428),
    bottomButtonColor = Colors.pink;
enum Gender{Male,Female};

class InputPAge extends StatefulWidget {
  @override
  _InputPAgeState createState() => _InputPAgeState();
}

class _InputPAgeState extends State<InputPAge> {
  Color  maleCardColor =  inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  void changeColor(Gender gender){
    if(gender==Gender.Male){
      if(maleCardColor==inactiveCardColor){
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }
      else{
        maleCardColor = inactiveCardColor;
      }
    }
    else{
      if(femaleCardColor==inactiveCardColor){
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }
      else{
        femaleCardColor = inactiveCardColor;
      }
    }
  }
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
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          changeColor(Gender.Male);
                        });
                      },
                      child: ReusableCard(
                        color: maleCardColor,
                        child: GenderIcon(
                          icon: FontAwesomeIcons.mars,
                          text: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          changeColor(Gender.Female);
                        });
                      },
                      child: ReusableCard(
                        color: femaleCardColor,
                        child: GenderIcon(
                          icon: FontAwesomeIcons.venus,
                          text: "FEMALE",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ReusableCard(color: activeCardColor),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: activeCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(color: activeCardColor),
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


