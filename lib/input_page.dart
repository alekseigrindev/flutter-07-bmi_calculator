import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const reusableCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget> [
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                  currentColor: reusableCardColor,
              ),),
              Expanded(child: ReusableCard(
                currentColor: reusableCardColor,
              ),),
            ],
          ),),
          Expanded(child: ReusableCard(
            currentColor: reusableCardColor,
          ),),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                currentColor: reusableCardColor,
              ),),
              Expanded(child: ReusableCard(
                currentColor: reusableCardColor,
              ),),
            ],
          ),),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  final Color currentColor;

  ReusableCard({required this.currentColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: currentColor,
        borderRadius:BorderRadius.circular(10.0),
      ),
    );
  }
}
