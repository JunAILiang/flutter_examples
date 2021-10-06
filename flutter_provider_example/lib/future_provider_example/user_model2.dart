class UserModel2{

  UserModel2({this.name});

  String? name = "Jimi";

  Future<void> changeName() async {
    await Future.delayed(Duration(milliseconds: 2000));
    name = "hello";
    print(name);
  }
}