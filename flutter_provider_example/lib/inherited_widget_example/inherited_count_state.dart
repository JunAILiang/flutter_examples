import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InheritedCountState extends InheritedWidget {

  /// 构造方法
  InheritedCountState({
    Key? key,
    required this.count,
    required Widget child
  }): super(key:key, child: child);

  /// 需要共享的数据
  final int count;

  /// 获取组件最近当前的InheritedWidget
  static InheritedCountState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCountState>();
  }

  /// 通知依赖该树共享数据的子widget
  @override
  bool updateShouldNotify(InheritedCountState oldWidget) {
    return oldWidget.count != count;
  }

}