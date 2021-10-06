import 'package:flutter/material.dart';

class UserModel5 with ChangeNotifier {

  String name = "Jimi";

  void changeName({required String newName}) {
    name = newName;
    notifyListeners();
  }

}