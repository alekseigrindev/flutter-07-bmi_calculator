import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark().copyWith(primary: const Color(0xFF08071C),),
        textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
        scaffoldBackgroundColor: const Color(0xFF08071C),
      ),
      home: InputPage(),
    );
  }
}


