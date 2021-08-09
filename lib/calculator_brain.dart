import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double _calc = 0;

  String calculateBmi() {
    _calc = weight / pow(height / 100, 2);
    return _calc.toStringAsFixed(1);
  }

  String getResult() {
    if (_calc > 25) {
      return 'Overweight';
    } else if (_calc >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_calc > 25) {
      return 'Your bodyweight is above normal. Try exercising more.';
    } else if (_calc >= 18.5) {
      return 'Your bodyweight is normal. Good job!';
    } else {
      return 'Your bodyweight is below normal. You can eat more.';
    }
  }
}
