import 'package:flutter/material.dart';
import 'package:flutter_provider_example/selector_example/user_model6.dart';
import 'package:provider/provider.dart';

class SelectorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SelectorExample"),
      ),
      body: Center(
        child: Selector<UserModel6, int>(
          selector: (_, userModel6) => userModel6.age,
          builder: (_, age, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(age.toString(),
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30
                    )
                ),
                child!
              ],
            );
          },
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: (){
                Provider.of<UserModel6>(context, listen: false).increaseAge();
              },
              child: Text("改变年龄"),
            ),
          ),
        ),
      ),
    );
  }
}
