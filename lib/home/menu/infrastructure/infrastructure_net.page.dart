import 'package:flutter/material.dart';

class NetPage extends StatefulWidget {
  @override
  _NetPageState createState() => _NetPageState();
}

class _NetPageState extends State<NetPage> {
  List<String> specificationPole = [
    'Sistem perakitan knock down',
    'Pengecetan menggunakan powder coating. Tiang mempunyai ketinggian 155cm dari lantai',
    'Tiang menggunakan pipa besi diameter luar 43mm dan tebal 5mm.',
    'Tiap tiang dilengkapi dengan 2 buah roda raket ukuran 2,5',
    'Landasan (pemberat) merupakan susunan dari beberapa blok besi.',
    'Landasan diberi penutup terbuat dari plastik ukuran luar 14cm x 32cm x 48cm.',
    'Berat landasan dan tiang sekitar 100kg. Jadi total 1 set 200kg.',
    'Memiliki sertifikat BWF yang artinya net tersebut telah lulus uji kelayakan.',
  ];
  List<String> specificationNet = [
    'Jaring bulutangkis adalah jaring dengan panjang 615cm dan lebar 75cm.',
    'Ukuran anyaman/ mesh jaring 18 x 18mm2 dan ukuran nylon 210-12 D.',
    'Jaring berwarna hijau tua (dark green).',
    'Pada bagian atas jaring ditutup dengan bahan plastik bewarna putih (white sheetex) dengan lebar 80 mm dan pita samping lebar 40 mm.',
    'Jaring bagian atas direntangkan dengan kawat sling baja berdiameter 2 mm dibungkus selang PVC berkekuatan 1.200 Ibs.',
    'Untuk mengikat bagian bawah jaring menggunakan tali polister berdiameter 2,5 mm.',
    'Ketinggian jaring di tengah lapangan 152, 4 cm dan dikedua sisi tiang 155 cm.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Net'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '         Tinggi net bulutangkis : ukuran tinggi net bulutangkis yang digunakan untuk semua nomor sama yaitu 1,55 meter. '
              'Tinggi net bulutangkis bagian tengah : 152 cm dan tinggi net bulutangkis dekat tiang net adalah 1,55 meter.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: Image.asset(
                  'assets/infrastructure/infrastructure_net_intro.png'),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Spesifikasi tiang sebagai berikut:',
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Column(
              children: List.generate(specificationPole.length, (index) {
                return Column(
                  children: <Widget>[
                    Flex(
                      direction: Axis.horizontal,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('${(index + 1)}.'),
                        SizedBox(
                          width: 4.0,
                        ),
                        Flexible(
                            child: Text(
                          specificationPole[index],
                          maxLines: 3,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 2.0,
                    )
                  ],
                );
              }),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Spesifikasi net sebagai berikut:',
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Column(
              children: List.generate(specificationNet.length, (index) {
                return Column(
                  children: <Widget>[
                    Flex(
                      direction: Axis.horizontal,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('${(index + 1)}.'),
                        SizedBox(
                          width: 4.0,
                        ),
                        Flexible(
                            child: Text(
                          specificationNet[index],
                          maxLines: 3,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 2.0,
                    )
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
