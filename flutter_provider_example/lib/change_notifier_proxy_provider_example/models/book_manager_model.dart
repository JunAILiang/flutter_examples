import 'package:flutter/material.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/models/book_model.dart';

class BookManagerModel with ChangeNotifier {

  // 依赖bookModel
  final BookModel _bookModel;

  // 获取数据所有的ID
  List<int>? _bookIds;

  // 构造函数
  BookManagerModel(this._bookModel, {BookManagerModel? bookManagerModel})
    : _bookIds = bookManagerModel?._bookIds ?? [];

  // 获取所有的书
  List<Book> get books => _bookIds!.map((id) => _bookModel.getById(id)).toList();

  // 根据索引获取数据
  Book getByPosition(int position) => books[position];

  // 获取书籍的长度
  int get length => _bookIds?.length ?? 0;

  // 添加书籍
  void addFaves(Book book) {
    _bookIds!.add(book.bookId);
    notifyListeners();
  }

  // 删除书籍
  void removeFaves(Book book) {
    _bookIds!.remove(book.bookId);
    notifyListeners();
  }

}