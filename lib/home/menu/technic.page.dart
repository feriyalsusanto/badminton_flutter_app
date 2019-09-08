import 'package:badminton_trainer/home/menu/technic/dropshot.tech.page.dart';
import 'package:badminton_trainer/home/menu/technic/netting.tech.page.dart';
import 'package:badminton_trainer/home/menu/technic/overheadlob.tech.page.dart';
import 'package:badminton_trainer/home/menu/technic/service.tech.page.dart';
import 'package:badminton_trainer/home/menu/technic/smash.tech.page.dart';
import 'package:flutter/material.dart';

import 'technic/drive.tech.page.dart';
import 'technic/footwork.tech.page.dart';

class TechnicPage extends StatefulWidget {
  @override
  _TechnicPageState createState() {
    return _TechnicPageState();
  }
}

class _TechnicPageState extends State<TechnicPage> {
  Map<String, int> menus = {
    'Service': 1,
    'Netting': 2,
    'Overhead Lob': 2,
    'Drive': 1,
    'Smash': 2,
    'Dropshot': 2,
    'Footwork': 1
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Teknik Dasar'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            int count = menus[menus.keys.elementAt(index)];
            return ListTile(
              title: Text(menus.keys.elementAt(index)),
              trailing: Icon(
                Icons.chevron_right,
                color: count > 1 ? Colors.grey : Colors.transparent,
              ),
              onTap: () {
                openPage(menus.keys.elementAt(index).toLowerCase());
//                if (count > 1) {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return TechnicMultiPage(
//                      title: menus.keys.elementAt(index),
//                    );
//                  }));
//                } else {
//
//                }
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
        case 'service':
          return ServiceTechnicPage();
          break;
        case 'netting':
          return NettingTechnicPage();
          break;
        case 'overhead lob':
          return OverheadLobTechnicPage();
          break;
        case 'drive':
          return DriveTechnicPage();
          break;
        case 'smash':
          return SmashTechnicPage();
          break;
        case 'dropshot':
          return DropShotTechnicPage();
          break;
        case 'footwork':
          return FootworkTechnicPage();
          break;
        default:
          return null;
      }
    }));
  }
}
