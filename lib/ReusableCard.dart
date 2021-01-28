import 'package:flutter/material.dart';
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
