import 'package:badminton_trainer/home/menu/history/world.history.page.dart';
import 'package:flutter/material.dart';

import 'history/profile.history.page.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() {
    return _HistoryPageState();
  }
}

class _HistoryPageState extends State<HistoryPage> {
  int _navBarIndex = 0;

  List<BottomNavigationBarItem> _navBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.history), title: Text('Sejarah')),
    BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profil Pemain'))
  ];

  List _navBarContents = [
    WorldHistoryPage(),
    ProfileHistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sejarah Bulutangkis'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _navBarIndex,
          items: _navBarItems,
          selectedFontSize: 16.0,
          selectedIconTheme: IconThemeData(size: 32.0),
          unselectedIconTheme: IconThemeData(size: 30.0),
          iconSize: 32.0,
          onTap: (index) {
            setState(() {
              _navBarIndex = index;
            });
          },
        ),
        body: _navBarContents[_navBarIndex]);
  }
}
