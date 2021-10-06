
import 'package:flutter/material.dart';

class CountNotifier with ChangeNotifier {

  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}