
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_provider_example/provider_mvvm_example/model/joke_model.dart';
import 'package:flutter_provider_example/provider_mvvm_example/view_model/joke_view_model.dart';

class JokeService {
  static Future<void> getJokes(JokeViewModel jokeViewModel) async {

    var response = await Dio().get("http://v.juhe.cn/joke/content/text.php?page=1&pagesize=20&key=03303e4d34effe095cf6a4257474cda9");
    if (response.statusCode == 200) {
      // 转换模型
      JokeModel jokeModel = jokeModelFromJson(json.encode(response.data["result"]));
      // 更新数据
      jokeViewModel.setJokeList(jokeModel);
    }
  }
}