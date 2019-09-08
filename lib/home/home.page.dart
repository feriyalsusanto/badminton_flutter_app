import 'package:badminton_trainer/home/info.page.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart' as Util;

import 'menu/menu_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _navBarIndex = 0;
  List<BottomNavigationBarItem> _navBarItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.dashboard), title: Text('Menu Utama')),
    BottomNavigationBarItem(icon: Icon(Icons.info), title: Text('Info'))
  ];
  List<String> _navBarTitles = ['Menu Utama', 'Info Aplikasi'];
  List _navBarContents = [
    MenuPage(),
    InfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_navBarTitles[_navBarIndex]),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.camera_alt), onPressed: () => scan())
          ],
        ),
        body: _navBarContents[_navBarIndex],
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
        ));
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      print('barcode $barcode');
      if (barcode != null) {
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
          return YoutubeVideoPlayer(
              'Video', Util.YoutubePlayer.convertUrlToId(barcode));
        }));

        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      }
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        print('The user did not grant the camera permission!');
      } else {
        print('Unknown error: $e');
      }
    } on FormatException {
      print(
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      print('Unknown error: $e');
    }
  }
}
