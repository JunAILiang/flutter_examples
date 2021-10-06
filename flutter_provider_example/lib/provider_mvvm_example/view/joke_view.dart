import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider_mvvm_example/service/joke_service.dart';
import 'package:flutter_provider_example/provider_mvvm_example/view_model/joke_view_model.dart';
import 'package:flutter_provider_example/provider_mvvm_example/widgets/joke_item.dart';
import 'package:provider/provider.dart';

class JokeView extends StatefulWidget {
  @override
  _JokeViewState createState() => _JokeViewState();
}

class _JokeViewState extends State<JokeView> {
  @override
  void initState() {

    // 获取接口数据
    JokeService.getJokes(Provider.of<JokeViewModel>(context, listen: false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider + MVVM"),
      ),
      body: Consumer<JokeViewModel>(
        builder: (_, jokeViewModel, child) {

          JokeViewModel _jokeViewModel = jokeViewModel;


          if (jokeViewModel.loading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.separated(
            itemBuilder: (_, index) {
              _jokeViewModel.setJoke(_jokeViewModel.jokeList![index]);

              return JokeItem(jokeViewModel: _jokeViewModel);
            },
            itemCount: _jokeViewModel.jokeList?.length ?? 0,
            separatorBuilder: (_, index) {
              return Divider(
                height: 1,
              );
            },
          );

        },
      ),
    );
  }
}
