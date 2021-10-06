class UserModel3{

  UserModel3({this.name});

  String? name = "Jimi";

  void changeName() {
    name = "hello";
    print(name);
  }
}