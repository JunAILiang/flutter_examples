import 'package:flutter/material.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/models/book_manager_model.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/models/book_model.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/widgets/book_item.dart';
import 'package:provider/provider.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var bookModel = Provider.of<BookModel>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text("书籍列表"),
      ),
      body: ListView.builder(
        itemCount: bookModel.length,
        itemBuilder: (_, index) => BookItem(id: index + 1),
      ),
    );
  }
}




