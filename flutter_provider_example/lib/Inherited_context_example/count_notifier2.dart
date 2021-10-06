
import 'package:flutter/material.dart';

class CountNotifier2 with ChangeNotifier {

  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}