import 'package:badminton_trainer/home/menu/history.page.dart';
import 'package:badminton_trainer/model/draweritem.model.dart';
import 'package:badminton_trainer/model/menuitem.model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final drawerItems = [
    DrawerItem('Menu Utama', Icons.class_),
    DrawerItem('Pengaturan', Icons.settings)
  ];
  final menuItems = [
    MenuItem('Sejarah Bulutangkis', 'lorem ipsem', 'assets/ic_birdie.png',
        backgroundColor: Colors.orange),
    MenuItem('Sarana dan Prasarana', 'lorem ipsem', 'assets/ic_court.png'),
    MenuItem('keterlaksanaan Gizi Seimbang', 'lorem ipsem',
        'assets/ic_nutrition.png',
        backgroundColor: Colors.green),
    MenuItem('Perwasitan', 'lorem ipsem', 'assets/ic_referee.png',
        backgroundColor: Colors.lime),
    MenuItem('Teknik Dasar', 'lorem ipsem', 'assets/ic_badminton.png',
        backgroundColor: Colors.red),
    MenuItem('Peraturan Bulutangkis', 'lorem ipsem', 'assets/ic_rules.png',
        backgroundColor: Colors.deepPurple),
    MenuItem('Taktik dan Strategi', 'lorem ipsem', 'assets/ic_strategy.png',
        backgroundColor: Colors.teal),
    MenuItem('Pelatihan Mental', 'lorem ipsem', 'assets/ic_mental.png',
        backgroundColor: Colors.pink),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Menu Utama',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.blue),
          child: Drawer(
            child: ListView(
              children: _buildDrawerItems(),
            ),
          )),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _buildMenuItems(),
        ),
      ),
    );
  }

  _buildDrawerItems() {
    var drawerOptions = <Widget>[];
    drawerItems.forEach((item) {
      drawerOptions.add(ListTile(
        leading: Icon(
          item.icon,
          color: Colors.white,
        ),
        title: Text(
          item.title,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        onTap: () {
          _onSelectedDrawers(item.title);
        },
      ));
    });
    return drawerOptions;
  }

  _onSelectedDrawers(String title) {
    Navigator.pop(context);
//    if (!title.toLowerCase().contains('utama')) {
//
//    }
  }

  _buildMenuItems() {
    var menuOptions = <Widget>[];
    menuItems.forEach((item) {
      menuOptions.add(Padding(
        padding: EdgeInsets.only(bottom: 4.0, top: 4.0),
        child: RaisedButton(
            onPressed: () {
              _menuPressedHandler(item.title.toLowerCase());
            },
            padding: EdgeInsets.all(16.0),
            color: item.backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.title,
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        item.subtitle,
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 16.0),
                  alignment: Alignment.centerRight,
                  child: Image.asset(item.assetName, height: 64.0, width: 64.0),
                )
              ],
            )),
      ));
    });
    return menuOptions;
  }

  _menuPressedHandler(String title) {
    StatefulWidget widget;
    switch (title) {
      case 'sejarah bulutangkis':
        widget = HistoryPage();
        break;
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }
}
