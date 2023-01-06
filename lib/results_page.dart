import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child:Column(
                  children: <Widget>[
                    Text('Normal',
                      style: TextStyle (
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.green,
                      ),
                    ),
                    Text('19.0',
                      style: TextStyle (
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.green,
                      ),
                    ),
                    Text('Well done!',
                      style: TextStyle (
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return InputPage();
                    }
                    ),
              );},
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                Text(
                  'Re-calculate',
                  selectionColor: Colors.white,
                  style: TextStyle (
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
