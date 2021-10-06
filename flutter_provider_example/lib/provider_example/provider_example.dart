import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider_example/user_model.dart';
import 'package:provider/provider.dart';

class ProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProviderExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserModel>(
              builder: (_, userModel, child) {
                return Text(userModel.name,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30
                    )
                );
              },
            ),
            Consumer<UserModel>(
              builder: (_, userModel, child) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: (){
                      userModel.changeName();
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
