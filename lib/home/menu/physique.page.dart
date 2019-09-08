import 'package:badminton_trainer/home/menu/physique/agility.phy.page.dart';
import 'package:badminton_trainer/home/menu/physique/speed.phy.page.dart';
import 'package:badminton_trainer/home/menu/physique/strength.phy.page.dart';
import 'package:flutter/material.dart';

class PhysiquePage extends StatefulWidget {
  @override
  _PhysiquePageState createState() {
    return _PhysiquePageState();
  }
}

class _PhysiquePageState extends State<PhysiquePage> {
  List<String> menus = ['Kelincahan', 'Kecepatan', 'Kekuatan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Latihan Fisik'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(menus[index]),
              onTap: () {
                openPage(menus[index].toLowerCase());
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1.0,
              color: Colors.grey,
            );
          },
          itemCount: menus.length,
        ));
  }

  openPage(String key) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      switch (key) {
        case 'kelincahan':
          return AgilityPhyPage();
          break;
        case 'kecepatan':
          return SpeedPhyPage();
          break;
        case 'kekuatan':
          return StrengthPhyPage();
          break;
        default:
          return null;
      }
    }));
  }
}
