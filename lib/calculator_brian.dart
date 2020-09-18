import 'dart:math';

//Calculating the BMI
class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;
  //double bmi = 0;
  double _bmi = 0;

  //Method to Calculate the BMI
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  //Method to get BMI Result
  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  //Method for BMI FEEDBACK
  String getFeedback() {
    if (_bmi >= 25) {
      return 'You are OverWeight and might be possibly getting close to Obesity ! Watch your Diet.';
    } else if (_bmi >= 18.5) {
      return 'You have a Normal body to Weight Ratio.';
    } else {
      return 'You body weight is lower than Normal! Consider Eating More to build up your body Weight.';
    }
  }
}
