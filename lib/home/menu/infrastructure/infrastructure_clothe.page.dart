import 'package:flutter/material.dart';

class ClothePage extends StatefulWidget {
  @override
  _ClothePageState createState() => _ClothePageState();
}

class _ClothePageState extends State<ClothePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sepatu dan Pakaian'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '         Sepertinya atlet pada umumnya, memiliki perlengkapan utama dan tambahan ketika tampil di sebuah permainan atau pertandingan. Baju, celana, sepatu tergolong kebutuhan utama dalam pertandingan bulutangkis, sedangkan ikat tangan , ikat kepala, pengamat lutut bias di sebut tambahan, sepatu pemain harus menggigit  bila di pakai di lapangan agar pemain bisa leluasa bergerak, baik maju maupun mundur tampa terpeleset. Celana pendek atau kaos bulutangkis sebenarnya bebas,  tetapi di tingkat internasional banyak dipakai jenis kaos yang sejuk dan mampu menyerap keringat dengan cepat.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '1.   Baju',
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/clothe_a.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/clothe_b.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: Text(
                'Gambar spesifikasi baju bulutangkis',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '2.   Celana',
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/pant_a.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/pant_b.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: Text(
                'Gambar spesifikasi celana bulutangkis',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/pant_c.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/pant_d.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: Text(
                'Gambar spesifikasi bawahan perempuan bulutangkis',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '3.   Sepatu',
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/shoe_a.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/shoe_b.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: Text(
                'Gambar spesifikasi sepatu bulutangkis',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '4.   Kaos Kaki',
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/sock_a.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/sock_b.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: Text(
                'Gambar spesifikasi kaos kaki bulutangkis',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '5.   Ikat Tangan, Ikat Kepala dan Ikat Kaki',
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/hand_a.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/feet_a.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
              ],
            ),
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/headband_a.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Image.asset(
                    'assets/infrastructure/headband_b.png',
                    height: 150,
                  ),
                  flex: 1,
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: Text(
                'Gambar ikat kepala, kaki dan tangan',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
