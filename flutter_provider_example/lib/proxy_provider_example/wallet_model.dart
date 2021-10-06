import 'package:flutter_provider_example/proxy_provider_example/user_model5.dart';

class WalletModel {

  UserModel5? userModel5;

  WalletModel({this.userModel5});

  void changeName() {
    userModel5?.changeName(newName: "JIMI");
  }

}