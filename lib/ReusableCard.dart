import 'package:flutter/material.dart';
// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPressed;
  ReusableCard({@required this.color, this.child, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
