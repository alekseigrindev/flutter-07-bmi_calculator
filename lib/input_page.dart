import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_cont.dart';
import 'package:bmi_calculator/reusable_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(child: Row(
            children: <Widget> [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  currentColor: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
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
                  currentColor: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                  cardChild: IconContent(iconData: FontAwesomeIcons.venus, title:'Female'),
                ),
              ),
            ],
          ),),
          Expanded(
            child: ReusableCard(
              currentColor: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                      'Height',
                      style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget> [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                          ),
                      Text('cm'),
                    ],
                  ),
                  SliderTheme (
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      activeTrackColor: Colors.white,
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 250.0,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double valueToSetup) {
                          setState(() {
                            height = valueToSetup.round();
                          });
                        },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.none;
                  });
                },
                currentColor: kInactiveCardColor,
                cardChild: IconContent(iconData: FontAwesomeIcons.venus, title:'Female'),
              ),),
              Expanded(child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.none;
                  });
                },
                currentColor: kInactiveCardColor,
                cardChild: IconContent(iconData: FontAwesomeIcons.venus, title:'Female'),
              ),),
            ],
          ),),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}





