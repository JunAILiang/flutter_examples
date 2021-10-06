import 'package:flutter/material.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/models/book_model.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/widgets/book_button.dart';
import 'package:provider/provider.dart';

class BookItem extends StatelessWidget {

  final int id;

  BookItem({
    Key? key,
    required this.id
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var bookModel = Provider.of<BookModel>(context);
    var book = bookModel.getById(id);

    return ListTile(
      leading: CircleAvatar(
        child: Text("${book.bookId}"),
      ),
      title: Text("${book.bookName}",
        style: TextStyle(
            color: Colors.black87
        ),
      ),
      trailing: BookButton(book: book),
    );
  }
}