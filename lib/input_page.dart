import 'package:bmi_calculator/icon_cont.dart';
import 'package:bmi_calculator/reusable_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  Color thirdCardColor = inactiveCardColor;
  Color forthCardColor = inactiveCardColor;
  Color fifthCardColor = inactiveCardColor;

  void updateColor({required String gender}) {
    if(gender == 'male') {
      if(maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else if(maleCardColor == activeCardColor) {
        maleCardColor = inactiveCardColor;
      }
    } else if(gender == 'female') {
      if(femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else if(femaleCardColor == activeCardColor) {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
              Expanded(child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(gender: 'male');
                  });
                  },
                child: ReusableCard(
                  currentColor: maleCardColor,
                  cardChild: IconContent(iconData: FontAwesomeIcons.mars, title:'Male'),
                ),
              ),),
              Expanded(child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(gender: 'female');
                  });
                  },
                child: ReusableCard(
                  currentColor: femaleCardColor,
                  cardChild: IconContent(iconData: FontAwesomeIcons.venus, title:'Female'),
                ),
              ),),
            ],
          ),),
          Expanded(child: ReusableCard(
            currentColor: inactiveCardColor,
            cardChild: IconContent(iconData: FontAwesomeIcons.venus, title:'Female'),
          ),),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                currentColor: inactiveCardColor,
                cardChild: IconContent(iconData: FontAwesomeIcons.venus, title:'Female'),
              ),),
              Expanded(child: ReusableCard(
                currentColor: inactiveCardColor,
                cardChild: IconContent(iconData: FontAwesomeIcons.venus, title:'Female'),
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





