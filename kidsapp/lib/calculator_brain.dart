import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age});

  final int height;
  final int weight;
  final int age;

  double _bmi;
  double _add;

  String calculateBMI() {
    _add = weight.toDouble()+height.toDouble();
    _bmi =  pow(_add , age);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 500000) {
      return 'High';
    } else if (_bmi < 500000) {
      return 'Normal';
    }
  }

  String getInterpretation() {
    if (_bmi >= 500000) {
      return 'Very High Result';
    } else if (_bmi < 500000) {
      return 'Normal result';
    }
  }
}
