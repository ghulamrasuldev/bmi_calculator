import 'package:flutter/material.dart';
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