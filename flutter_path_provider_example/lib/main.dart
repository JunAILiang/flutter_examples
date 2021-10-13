import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  String name = "Jimi";

  /// 获取文档目录文件
  Future<File> _getLocalDocumentFile() async {
    final dir = await getApplicationDocumentsDirectory();
    return File('${dir.path}/str.txt');
  }

  /// 获取临时目录文件
  Future<File> _getLocalTemporaryFile() async {
    final dir = await getTemporaryDirectory();
    return File('${dir.path}/str.txt');
  }

  /// 获取应用程序目录文件
  Future<File> _getLocalSupportFile() async {
    final dir = await getApplicationSupportDirectory();
    return File('${dir.path}/str.txt');
  }

  /// 读取值
  Future<void> readString() async {
    try {

      final file = await _getLocalDocumentFile();
      final result  = await file.readAsString();
      print("result-----$result");

      final file1 = await _getLocalTemporaryFile();
      final result1  = await file1.readAsString();
      print("result1-----$result1");

      final file2 = await _getLocalSupportFile();
      final result2  = await file2.readAsString();
      print("result2-----$result2");


    } catch (e) {
      print(e);
    }
  }

  /// 写入数据
  Future<void> writeString(String str) async {
    final file = await _getLocalDocumentFile();
    await file.writeAsString(name);
    print(file.path);

    final file1 = await _getLocalTemporaryFile();
    await file1.writeAsString(name);
    print(file1.path);


    final file2 = await _getLocalSupportFile();
    await file2.writeAsString(name);
    print(file2.path);

    print("写入成功");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("path_provider"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name,
                style: const TextStyle(
                    color: Colors.pink,
                    fontSize: 30
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  writeString(name);
                },
                child: const Text("存入本地目录"),
              ),
              ElevatedButton(
                onPressed: (){
                  readString();
                },
                child: Text("读取值"),
              ),
            ],
          ),
        ),
      )
    );
  }
}