import 'package:flutter/material.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/pages/page_a.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/pages/page_b.dart';

class ChangeNotifierProxyProviderExample extends StatefulWidget {
  @override
  _ChangeNotifierProxyProviderExampleState createState() => _ChangeNotifierProxyProviderExampleState();
}

class _ChangeNotifierProxyProviderExampleState extends State<ChangeNotifierProxyProviderExample> {


  var _selectedIndex = 0;
  var _pages = [PageA(), PageB()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "书籍列表"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "收藏"
          )
        ],
      ),
    );
  }
}
