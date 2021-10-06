
import 'package:flutter/material.dart';

class CountNotifier1 with ChangeNotifier {

  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}