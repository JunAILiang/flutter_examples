import 'package:flutter_provider_example/stream_provider_example/user_model3.dart';

class UserStream {

  Stream<UserModel3> getStreamUserModel() {
    return Stream<UserModel3>.periodic(Duration(milliseconds: 1000),
        (value) => UserModel3(name: "$value")
    ).take(10);
  }

}