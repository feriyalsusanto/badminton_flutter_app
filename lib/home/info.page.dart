import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.person_pin,
                size: 24.0,
                color: Colors.black,
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                'Tentang Penulis',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Center(
            child: Image.asset(
              'assets/profile.png',
              scale: 2.5,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            'Nelly Lirisqi merupakan satu-satunya perempuan dari tiga bersaudara di keluarganya, adalah anak kedua dari pasangan '
            'Bapak Drs. Supriadi dan Ibu Dra. Misnati yang lahir pada tanggal 26 Agustus 1996 di Banyuwangi. Dia memulai pendidikan '
            'di TK Al-Bukhori, Kecamatan Genteng, Kabupaen Banyuwangi pada tahun 2000, kemudian dilanjutkan di SDN 2 Kaligondo, '
            'Kecamatan Genteng, Kabupaten Banyuwangi, masuk awal sekolah pada tahun 2002 dan berhasil lulus pada tahun 2008 yang '
            'kemudian melanjutkan pendidikan sekolah menengah pertama di SMPN 2 Genteng di Kabupaten Banyuwangi pada tahun 2008 dan '
            'lulus tahun 2011, pada tahun 2011 peneliti diterima di sekolah unggulan Kabupaten Banyuwangi yaitu SMAN 1 Genteng melalui '
            'jalur prestasi, Ia melanjutkan studinya ke perguruan tinggi negeri Universitas Negeri Malang dan mengambil konsentrasi di '
            'Fakultas Ilmu Keolahragaan jurusan Pendidikan Jasmani dan Kesehatan. Setelah lulus pada tahun 2018, melanjutkan pada '
            'Universitas yang sama dengan mengambil jenjang S2 Pendidikan Olahraga sampai saat ini.',
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.apps,
                size: 24.0,
                color: Colors.black,
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                'Tentang Aplikasi',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Aplikasi ini bertujuan sebagai sarana pembelajaran yang berbasis aplikasi android dimana, aplikasi ini dapat menjadi sumber '
                'berlajar tambahan selain media cetak. Kelebihan dari aplikasi ini dapat digunakan sebagai sumber belajar dimanapun dan '
                'kapanpun, karena dengan segenggam hp, bisa mengakses ilmu pengetahuan khususnya dalam bidang pembelajaran bulutangkis secara optimal.',
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
