import 'package:flutter/material.dart';
import 'package:flutter_provider_example/proxy_provider_example/user_model5.dart';
import 'package:flutter_provider_example/proxy_provider_example/wallet_model.dart';
import 'package:provider/provider.dart';

class ProxyProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProxyProviderExample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserModel5>(
              builder: (_, userModel, child) {
                return Text(userModel.name,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30
                    )
                );
              },
            ),
            Consumer<UserModel5>(
              builder: (_, userModel, child) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: (){
                      userModel.changeName(newName: "hello");
                    },
                    child: Text("改变值"),
                  ),
                );
              },
            ),
            Consumer<WalletModel>(
              builder: (_, walletModel, child) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: (){
                      walletModel.changeName();
                    },
                    child: Text("通过代理改变值"),
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
