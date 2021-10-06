import 'package:flutter/material.dart';

class UserModel1 with ChangeNotifier {

  String name = "Jimi";

  void changeName() {
    name = "hello";
    notifyListeners();
  }

  void changeName1() {
    name = "world";
    notifyListeners();
  }
}