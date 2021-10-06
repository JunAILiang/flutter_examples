import 'package:flutter/material.dart';
import 'package:flutter_provider_example/inherited_widget_example/inherited_count_state.dart';

class InheritedWidgetCountExample extends StatefulWidget {
  @override
  _InheritedWidgetCountExampleState createState() => _InheritedWidgetCountExampleState();
}

class _InheritedWidgetCountExampleState extends State<InheritedWidgetCountExample> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedWidget"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: InheritedCountState(
            count: count,
            child: WidgetA()
        ),
      ),
    );
  }
}


class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(InheritedCountState.of(context)?.count.toString() ?? "",
      style: TextStyle(
          color: Colors.green,
          fontSize: 50
      ),
    );
  }
}

