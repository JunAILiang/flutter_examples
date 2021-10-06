import 'package:flutter/material.dart';

class UserModel6 with ChangeNotifier {

  String name = "Jimi";
  int age = 18;
  String phone = "18888888888";


  void increaseAge() {
    age++;
    notifyListeners();
  }

}