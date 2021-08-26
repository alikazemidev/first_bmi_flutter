import 'dart:math';

class CalculatorBrain {
  int? height;
  int? weight;
  CalculatorBrain({this.height, this.weight});
  double? _bmi;
  String calculatBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String? resultBMI() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String? bodyBMI() {
    if (_bmi! >= 25) {
      return 'more walk';
    } else if (_bmi! > 18.5) {
      return 'you ok';
    } else {
      return 'eat more';
    }
  }
}
