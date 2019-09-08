import 'package:flutter/material.dart';

class RacketPage extends StatefulWidget {
  @override
  _RacketPageState createState() => _RacketPageState();
}

class _RacketPageState extends State<RacketPage> {
  List<String> modelRacket = [
    'kayu',
    'aluminium',
    'kayu dan aluminium',
    'fiberglas, dan',
    'arang (carbonex).',
  ];

  List<String> specificationRacket = [
    'Berat raket bulutangkis : kurang dari 150 gram',
    'Panjang raket bulutangkis : 66 sampai 68 centimeter',
    'Lebar raket bulutangkis : 19 sampai 22 centimeter',
    'Panjang area untuk senar : 24 sampai 28 centimeter',
    'Lebar area untuk senar : 19 sampai 22 centimeter',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raket'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '         Alat yang digunakan untuk memukul shuttlecock (suttlecock) dalam permainan bulu tangkis ini disebut dengan raket. Raket memiliki berat kurang dari 150 gram. Bahan yang dipakai untuk membuat raket yaitu:',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 4.0,
            ),
            Column(
              children: List.generate(modelRacket.length, (index) {
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
                          modelRacket[index],
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
              height: 4.0,
            ),
            Image.asset('assets/infrastructure/spec_racket_a.png'),
            SizedBox(
              height: 8.0,
            ),
            Image.asset('assets/infrastructure/spec_racket_b.png'),
            SizedBox(
              height: 4.0,
            ),
            Column(
              children: List.generate(specificationRacket.length, (index) {
                return Column(
                  children: <Widget>[
                    Flex(
                      direction: Axis.horizontal,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.brightness_1,
                          color: Colors.black,
                          size: 8.0,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Flexible(
                            child: Text(
                          specificationRacket[index],
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
              '- Senar Raket',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            generateStringRacket(),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '- Towel Raket',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            generateTowelRacket(),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '- Tas Raket',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            generateBagRacket()
          ],
        ),
      ),
    );
  }

  generateStringRacket() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Image.asset(
                'assets/infrastructure/string_racket_a.png',
                height: 150,
              ),
              flex: 1,
            ),
            Flexible(
              child: Image.asset(
                'assets/infrastructure/string_racket_b.png',
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
            'Gambar spesifikasi senar raket bulutangkis',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          'Tarikan senar tinggi dan rendah',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14.0),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          '         Secara umum, semakin tinggi tarikan senar, kontrol elastis shuttlecock akan lebih baik dan sementara pada tarikan senar yang rendah pengendalian pada shuttlecock akan menjadi lebih sulit. Ketika tarikan senar relatif singkat. Waktu kontak yang singkat berrti bahwa senar memiliki efek yang relatif sedikit ketika shuttlecock yang terkena dan kontrol shuttlecock  lebih mudah.',
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 4.0,
        ),
        Image.asset('assets/infrastructure/string_racket_spec.png'),
        SizedBox(
          height: 4.0,
        ),
        Text(
          '         Ketika senar terlalu tinggi, rendahnya jumlah depresi di senar berarti waktu kontak antara shuttlecock dan raket relatif singkat pendek sehingga jika tidak cukup kuat, shuttlecock akan akan melayang pelan. Ketika tarikan senar terlau indah, banyaknya depresi di senar berarti kontak antara raket wajah dan shuttlecock lebih panjang, yang berarti bahwa kekuatan dari tenaga instan kekuatan tidak dapat sepenuhnya dipindahkan ke shutllecock.',
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          'Tarikan senar tinggi dan rendah',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14.0),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          '         Ketika memilih tarikan senar yang tepat, pertimbangan utama adalah harus kekuatan instan/ kekuatan hentakan pukulan yang cukup (berarti diperlukan pemain yang mampu memukul dengan kekuatan instan yang kuat), ketika gaya instan cukup kemudian berpengaruh pada pengendalian shuttlecock yang dapat dipertimbangkan. “kecocokan” perkiraan tarikan senar tidak mengacu pada angka tarikan senar tertentu. Semua pernah merasakan bahwa senar yang sudah dipasang akan kelamaan menjadi kendur atau tarikan menjadi rendah. Tarikan yang standar setiap individu berkisar 22-26 atau 25-29 Ibs. Caranya bisa lakukan percobaan dengan meminjam raket orang lain untuk mencari tahu tarikan senar yang ada. Pada dasarnya, asalkan tidak merasakan adanya ketidaknyamanan atau kurangnya kelancaran saat melakukan pukulan, tarikan senar dipastikan cocok. ',
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          'Tarikan Senar Tidak Selalu ”Lebih Tinggi Lebih Baik”',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14.0),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          '         Tarikan senar tinggi memiliki kelebihan tetapi juga memiliki efek samping yang paling terasa adalah tenaga instan yang dibutuhkan akan meningkat sebagaimana besarnya tarikan senar yang tinggi, ini berarti bahwa memilih tarikan senar yang benar itu tentu bukan kasus “yang lebih tinggi lebih baik” dan pemain harus mempertimbangkan atas kemampuan dan teknik seseorang dan kemudian memilih tarikan senar yang sesuai diinginkan. Dibutuhkan lebih banyak tenaga untuk melakukan pukulan daripada biasanya dengan tarikan senar ini. ',
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 4.0,
        ),
        Center(
          child: Image.asset('assets/infrastructure/string_racket_c.png'),
        )
      ],
    );
  }

  generateTowelRacket() {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Image.asset(
            'assets/infrastructure/towel_racket_a.png',
            height: 150,
          ),
          flex: 1,
        ),
        Flexible(
          child: Image.asset(
            'assets/infrastructure/towel_racket_b.png',
            height: 150,
          ),
          flex: 1,
        ),
      ],
    );
  }

  generateBagRacket() {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Image.asset(
            'assets/infrastructure/towel_bag_a.png',
            height: 150,
          ),
          flex: 1,
        ),
        Flexible(
          child: Image.asset(
            'assets/infrastructure/towel_bag_b.png',
            height: 150,
          ),
          flex: 1,
        ),
      ],
    );
  }
}
