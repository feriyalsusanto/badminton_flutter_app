import 'package:flutter/material.dart';

class ShuttlecockPage extends StatefulWidget {
  @override
  _ShuttlecockPageState createState() => _ShuttlecockPageState();
}

class _ShuttlecockPageState extends State<ShuttlecockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shuttlecock'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '         Berat shuttlecock (shuttlecock) bulutangkis : 4,73 sampai 5,50 gram. Jumlah bulu yang digunakan dan menancap pada shuttlecock (shuttlecock) : 14 sampai 16 helai. Tinggi bulu dari permukaan gabus : 64 sampai 74 mm. Diameter gabus untuk menancapkan bulu : 25 sampai 28 mm.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: Image.asset(
                  'assets/infrastructure/infrastructure_shuttlecock.png'),
            ),
          ],
        ),
      ),
    );
  }
}
