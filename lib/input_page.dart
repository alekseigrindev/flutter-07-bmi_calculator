import 'package:bmi_calculator/icon_cont.dart';
import 'package:bmi_calculator/reusable_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;

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
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  currentColor: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                  cardChild: IconContent(iconData: FontAwesomeIcons.mars, title:'Male'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  currentColor: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                  cardChild: IconContent(iconData: FontAwesomeIcons.venus, title:'Female'),
                ),
              ),
            ],
          ),),
          Expanded(child: ReusableCard(
            onPress: () {
              setState(() {
                selectedGender = Gender.none;
              });
            },
            currentColor: inactiveCardColor,
            cardChild: IconContent(iconData: FontAwesomeIcons.venus, title:'Female'),
          ),),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.none;
                  });
                },
                currentColor: inactiveCardColor,
                cardChild: IconContent(iconData: FontAwesomeIcons.venus, title:'Female'),
              ),),
              Expanded(child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.none;
                  });
                },
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





