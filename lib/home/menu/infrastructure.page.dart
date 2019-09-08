import 'package:badminton_trainer/home/menu/infrastructure/infrastructure_clothe.page.dart';
import 'package:badminton_trainer/home/menu/infrastructure/infrastructure_field.page.dart';
import 'package:badminton_trainer/home/menu/infrastructure/infrastructure_net.page.dart';
import 'package:badminton_trainer/home/menu/infrastructure/infrastructure_racket.page.dart';
import 'package:badminton_trainer/home/menu/infrastructure/infrastructure_shuttlecock.page.dart';
import 'package:flutter/material.dart';

class InfrastructurePage extends StatefulWidget {
  @override
  _InfrastructurePageState createState() {
    return _InfrastructurePageState();
  }
}

class _InfrastructurePageState extends State<InfrastructurePage> {
  List<InfrastructureModel> infrastructures = [
    InfrastructureModel(title: 'Lapangan', widget: FieldPage()),
    InfrastructureModel(title: 'Net', widget: NetPage()),
    InfrastructureModel(title: 'Shuttlecock', widget: ShuttlecockPage()),
    InfrastructureModel(title: 'Raket', widget: RacketPage()),
    InfrastructureModel(title: 'Sepatu dan Pakaian', widget: ClothePage())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Sarana dan Prasarana'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  infrastructures[index].title,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return infrastructures[index].widget;
                  }));
                },
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 1.0,
                color: Colors.grey,
              );
            },
            itemCount: infrastructures.length));
  }
}

class InfrastructureModel {
  String title;
  Widget widget;

  InfrastructureModel({this.title, this.widget});
}
