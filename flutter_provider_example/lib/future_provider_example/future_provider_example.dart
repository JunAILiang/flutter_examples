import 'package:flutter/material.dart';
import 'package:flutter_provider_example/future_provider_example/user_model2.dart';
import 'package:provider/provider.dart';

class FutureProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureProviderExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserModel2>(
              builder: (_, userModel, child) {
                return Text(userModel.name ?? "",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30
                    )
                );
              },
            ),
            Consumer<UserModel2>(
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
