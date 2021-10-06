import 'package:flutter/material.dart';
import 'package:flutter_provider_example/change_notifier_provider_example/user_model1.dart';
import 'package:flutter_provider_example/multi_provider_example/user_model4.dart';
import 'package:provider/provider.dart';

class MultiProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MultiProviderExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserModel1>(
              builder: (_, userModel, child) {
                return Text(userModel.name,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30
                    )
                );
              },
            ),
            Consumer<UserModel4>(
              builder: (_, userModel, child) {
                return Text(userModel.age.toString(),
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30
                    )
                );
              },
            ),
            Consumer2<UserModel1, UserModel4>(
              builder: (_, userModel1, userModel4, child) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: (){
                      userModel1.changeName();
                      userModel4.changeName();
                    },
                    child: Text("改变值"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
