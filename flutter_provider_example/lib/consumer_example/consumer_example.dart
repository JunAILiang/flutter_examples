import 'package:flutter/material.dart';
import 'package:flutter_provider_example/consumer_example/count_notifier1.dart';
import 'package:provider/provider.dart';

class ConsumerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConsumerExample"),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(Provider.of<CountNotifier1>(context).count.toString(),
      //         style: TextStyle(
      //             color: Colors.red,
      //             fontSize: 50
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(
      //           top: 20
      //         ),
      //         child: ElevatedButton(
      //           onPressed: (){
      //             Provider.of<CountNotifier1>(context, listen: false).increment();
      //           },
      //           child: Text("点击加1"),
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      body: Consumer<CountNotifier1>(
        builder: (BuildContext context, CountNotifier1 countNotifier1, Widget? child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(countNotifier1.count.toString(),
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 50
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      countNotifier1.increment();
                    },
                    child: Text("点击加1"),
                  ),
                ),
                child!
              ],
            ),
          );
        },
        child: Container(
          child: Column(
            children: [
              Text("更多组件"),
              Text("更多组件"),
              Text("更多组件"),
              Text("更多组件"),
              Text("更多组件"),
              Text("更多组件"),
              Text("更多组件"),
              Text("更多组件"),
            ],
          ),
        ),
      ),
    );
  }
}
