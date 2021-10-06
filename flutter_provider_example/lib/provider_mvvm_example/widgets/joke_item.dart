import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider_mvvm_example/model/joke_model.dart';
import 'package:flutter_provider_example/provider_mvvm_example/view_model/joke_view_model.dart';

class JokeItem extends StatelessWidget {

  JokeItem({
    Key? key,
    this.jokeViewModel
  }) : super(key: key);

  final JokeViewModel? jokeViewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
        bottom: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("${jokeViewModel?.joke?.content ?? ""}",
            style: TextStyle(
              color: Colors.black87,
              letterSpacing: 1.3,
              wordSpacing: 2
            ),
          ),
          SizedBox(height: 5,),
          Text("${jokeViewModel?.joke?.updatetime ?? "--"}")
        ],
      ),
    );
  }
}
