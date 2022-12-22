import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color currentColor;
  final Widget cardChild;

  ReusableCard({required this.currentColor, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: currentColor,
        borderRadius:BorderRadius.circular(10.0),
      ),
    );
  }
}