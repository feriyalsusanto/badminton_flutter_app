import 'package:flutter/material.dart';

class FieldPage extends StatefulWidget {
  @override
  _FieldPageState createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {
  List<String> standardField = [
    'Panjang lapangan: 13,40 m',
    'Lebar lapangan: 6,10 m',
    'Jarak garis servis depan dari garis net 1,98 m',
    'Jarak garis servis tengah dari garis samping lapangan 3,05 m',
    'Jarak garis servis belakang (untuk permainan ganda) dari garis belakang lapangan 0,76 m',
    'Jarak garis samping permainan tunggal dari garis pinggir lapangan 0,46 m'
  ];

  List<String> mixField = [
    'Panjang bidang permainan 13,40 m',
    'Lebar bidang permainan 5,18 m',
    'Panjang bidang penerima servis 4,72 m',
    'Lebar bidang penerima servis 2,59 m'
  ];

  List<String> mix2Field = [
    'Panjang bidang permainan 13,40 m',
    'Lebar bidang permainan 6,10 m',
    'Panjang bidang penerima servis 3,96 m',
    'Lebar bidang penerima servis 3,05 m'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lapangan'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '          Lapangan bulutangkis dapat dibuat dengan mudah, di mana saja, sejauh ada ruangan seluas kira-kira 12X20 m. Ditempat terbuka tentu saja diupayakan '
              'agar gangguan angin titak terlalu besar, sedangkan di ruang tertutup, atap bangunan sebisa mungkin di atas delapan meter agar shuttlecock yang '
              'tengah di mainkan tidak sampai terganggu. Di Indonesia , di kampung lapangan bulutangkis banyak didirikan di atas tanah, semen cor, atau aspal. '
              'Namun, di gedung olahraga biasanya berupa semen yang di lapisi vinyl atau kayu lantai. Di lapangan yang di akui secara internasional digunakan '
              'karpet yang terbuat dari karet keras, namun elastis. Lapangan bulutangkis berukuran 610 X 1340 cm, yang dibagi dalam bidang-bidang, masing-masing '
              'dua sisi berlawanan. Ada garis tunggal, ada garis Ganda, ada ruang yang memberi jarak antara pelaku dan penerima servis. Ukuran Panjang Lapangan '
              'Bulutangkis Tunggal Internasional, BWF.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '1.  Ukuran Panjang Lapangan Bulutangkis Menurut BWF.',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
            ),
            Image.asset('assets/infrastructure/infrastructure_field_bwf.png'),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'a.  Ukuran standar lapangan badminton internasional.',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Column(
              children: List.generate(standardField.length, (index) {
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
                          standardField[index],
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
            Image.asset(
                'assets/infrastructure/infrastructure_field_international.png'),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'b.  Ukuran Bidang permainan untuk nomor tunggal Putra atau Putri:',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Column(
              children: List.generate(mixField.length, (index) {
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
                          mixField[index],
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
              'c.  Ukuran Bidang permainan untuk nomorganda Putra , Putri atau Campuran:',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Column(
              children: List.generate(mix2Field.length, (index) {
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
                          mix2Field[index],
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
            Center(
              child: Image.asset(
                'assets/infrastructure/infrastructure_field_badminton.png',
                height: 400.0,
              ),
            ),
            Center(
              child: Text(
                'Gambar ukuran bidang lapangan bulutangkis',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'd.  Spesifikasi karpet lapangan bulutangkis',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Image.asset(
                'assets/infrastructure/infrastructure_field_carpet.png'),
            SizedBox(
              height: 8.0,
            ),
            Image.asset(
                'assets/infrastructure/infrastructure_field_carpet2.png'),
            SizedBox(
              height: 4.0,
            ),
            Center(
              child: Text(
                'Gambar Spesifikasi karpet lapangan bulutangkis',
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
