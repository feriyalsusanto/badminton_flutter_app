import 'package:badminton_trainer/home/menu/history.page.dart';
import 'package:badminton_trainer/home/menu/infrastructure.page.dart';
import 'package:badminton_trainer/home/menu/pdfviewer.page.dart';
import 'package:badminton_trainer/home/menu/technic.page.dart';
import 'package:badminton_trainer/model/menuitem.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

import 'physique.page.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final menuItems = [
    MenuItem('Sejarah Bulutangkis', false, 'assets/ic_birdie.png',
        backgroundColor: Colors.orange),
    MenuItem('Pembelajaran Blended Learning', true, 'assets/ic_blended.png',
        backgroundColor: Colors.cyan),
    MenuItem('Sarana dan Prasarana', false, 'assets/ic_court.png'),
    MenuItem('Teknik Dasar', false, 'assets/ic_badminton.png',
        backgroundColor: Colors.green),
    MenuItem('Latihan Fisik', false, 'assets/ic_fitness.png',
        backgroundColor: Colors.lime),
    MenuItem('Latihan Mental', true, 'assets/ic_mental.png',
        backgroundColor: Colors.red),
    MenuItem('Strategi dan Taktik', true, 'assets/ic_strategy.png',
        backgroundColor: Colors.deepPurple),
    MenuItem('Tatalaksana Gizi', true, 'assets/ic_nutrition.png',
        backgroundColor: Colors.teal),
    MenuItem('Paraturan Permainan', true, 'assets/ic_rules.png',
        backgroundColor: Colors.pink),
    MenuItem('Perwasitan', true, 'assets/ic_referee.png',
        backgroundColor: Colors.lightGreen)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _buildMenuItems(),
        ),
      ),
    );
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
                    item.isPdf
                        ? Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: Icon(
                              Icons.picture_as_pdf,
                              color: Colors.white,
                            ),
                          )
                        : Container()
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

  _menuPressedHandler(String title) async {
    StatefulWidget widget;
    switch (title) {
      case 'pembelajaran blended learning':
        widget = PDFPageViewer(
          document: await openPdf('assets/document/blendedlearning.pdf'),
          title: 'Pembelajaran Blended Learning',
        );
        break;
      case 'sejarah bulutangkis':
        widget = HistoryPage();
        break;
      case 'sarana dan prasarana':
        widget = InfrastructurePage();
        break;
      case 'tatalaksana gizi':
        widget = PDFPageViewer(
          document: await openPdf('assets/document/tatalaksana.pdf'),
          title: 'Tatalaksana Gizi',
        );
        break;
      case 'perwasitan':
        widget = PDFPageViewer(
          document: await openPdf('assets/document/perwasitan.pdf'),
          title: 'Perwasitan',
        );
        break;
      case 'teknik dasar':
        widget = TechnicPage();
        break;
      case 'paraturan permainan':
        widget = PDFPageViewer(
          document: await openPdf('assets/document/peraturan.pdf'),
          title: 'Paraturan Permainan',
        );
        break;
      case 'strategi dan taktik':
        widget = PDFPageViewer(
          document: await openPdf('assets/document/strategi.pdf'),
          title: 'Strategi dan Taktik',
        );
        break;
      case 'latihan mental':
        widget = PDFPageViewer(
          document: await openPdf('assets/document/perwasitan.pdf'),
          title: 'Latihan Mental',
        );
        break;
      case 'latihan fisik':
        widget = PhysiquePage();
        break;
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  openPdf(String assetPath) async {
    PDFDocument doc = await PDFDocument.fromAsset(assetPath);
    return doc;
  }
}
