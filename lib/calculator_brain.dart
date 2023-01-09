
import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    String resultString = 'Try again';
    if(_bmi >= 25) {
      resultString = 'Overweight';
    } else if(_bmi > 18.5) {
      resultString = 'Normal';
    } else {
      resultString = 'Underweight';
    }

    return resultString;
  }

  String getInterpretation() {
    String interpretation = 'Try again';
    if(_bmi >= 25) {
      interpretation = 'You have a higher than normal body weight.';
    } else if(_bmi > 18.5) {
      interpretation = 'You have a normal body weight';
    } else {
      interpretation = 'You have a lower than normal body weight.';
    }
    return interpretation;
  }

}