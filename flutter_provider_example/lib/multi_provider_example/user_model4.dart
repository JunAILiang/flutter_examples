import 'package:flutter/material.dart';

class UserModel4 with ChangeNotifier {

  String name = "Jimi";
  int age = 18;

  void changeName() {
    name = "hello";
    age = 20;
    notifyListeners();
  }

}