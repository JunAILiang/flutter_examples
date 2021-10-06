import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider_mvvm_example/model/joke_model.dart';

class JokeViewModel with ChangeNotifier {

  List<Joke>? _jokeList = [];

  late Joke _joke;

  bool loading = true;

  setJokeList(JokeModel jokeModel) {
    _jokeList = [];
    _jokeList = jokeModel.data;
    loading = false;
    notifyListeners();
  }

  setJoke(Joke joke) {
    _joke = joke;
  }

  List<Joke>? get jokeList => _jokeList;

  Joke get joke => _joke;


}