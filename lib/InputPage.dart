import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'GenderIcon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class InputPAge extends StatefulWidget {
  @override
  _InputPAgeState createState() => _InputPAgeState();
}

class _InputPAgeState extends State<InputPAge> {
  Gender selectedGender;
  int height = 180, weight = 60 ;
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
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      color: selectedGender == Gender.Male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: GenderIcon(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      color: selectedGender == Gender.Female
                          ? kActiveCardColor
                          : kInactiveCardColor,
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
              flex: 2,
              child: ReusableCard(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(height.toString(), style: kThickLabelTextStyle),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: kBottomButtonColor,
                          activeTrackColor: Colors.white,
                          overlayColor: Colors.pink.withOpacity(.5),
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 14,
                          )),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 200,
                        inactiveColor: kInactiveColor,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                weight.toString(),
                                style: kThickLabelTextStyle,
                              ),
                              Text(
                                'KG',
                                style: kLabelTextStyle,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: null,
                                child: Icon(Icons.remove),
                                backgroundColor: kButtonColor,
                              ),
                              FloatingActionButton(
                                onPressed: null,
                                child: Icon(Icons.add),
                                backgroundColor: kButtonColor,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(color: kActiveCardColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                height: kBorderButtonHeight,
                onPressed: () {},
                child: Text('Press me'),
                color: kBottomButtonColor,
              ),
            )
          ],
        ));
  }
}
