import 'package:flutter/material.dart';
import 'package:flutter_provider_example/change_notifier_provider_example/user_model1.dart';
import 'package:provider/provider.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NextPage"),
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
            Consumer<UserModel1>(
              builder: (_, userModel, child) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: (){
                      userModel.changeName1();
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
