import 'package:flutter/material.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/models/book_manager_model.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/widgets/book_item.dart';
import 'package:provider/provider.dart';

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var bookManagerModel = Provider.of<BookManagerModel>(context);
    var bookCount = bookManagerModel.length;

    return Scaffold(
      appBar: AppBar(
        title: Text("收藏列表"),
      ),
      body: ListView.builder(
        itemCount: bookCount,
        itemBuilder: (_, index) => BookItem(id: bookManagerModel.getByPosition(index).bookId),
      ),
    );
  }
}




