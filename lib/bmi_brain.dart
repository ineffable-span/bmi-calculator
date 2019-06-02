import 'dart:math';

import 'package:flutter/material.dart';

class BmiBrain {
  final int height;
  final int weight;
  double _bmi;

  BmiBrain({@required this.height, @required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBmi() {
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getSuggestions() {
    if (_bmi > 25) {
      return 'Your weight is more than requried. Do consider exercising often.';
    } else if (_bmi > 18.5) {
      return 'Your weight is just right. Good job!';
    } else {
      return 'Your weigth is less than required. Do consider eating more.';
    }
  }
}
