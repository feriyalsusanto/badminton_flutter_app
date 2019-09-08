import 'package:flutter/material.dart';

class WorldHistoryPage extends StatefulWidget {
  @override
  _WorldHistoryPageState createState() => _WorldHistoryPageState();
}

class _WorldHistoryPageState extends State<WorldHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Image.asset(
                        'assets/ic_cover_sejarah.jpg',
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 4.0),
                        child: Text(
                          '         Sejarah bulutangkis di Indonesia sudah cukup lama. Ada yang memperkirakan, bangsa Indonesia sudah mengenal bulutangkis sejak tahun 1930-an. '
                              'Saat itu, bulutangkis dinaungi oleh Ikatan Sport Indonesia (ISI). Bulutangkis makin berkembang pasca kemerdekaan. Pada tahun 1947, di Jakarta, '
                              'berdiri persatuan bulutangkis bernama Persatuan Olahraga Republik Indonesia (PORI). Dan, pada 5 mei 1951, terbentuklah Persatuan Bulutangkis Seluruh Indonesia (PBSI).',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                        child: Text(
                          '         PBSI lahir di tengah gejolak revolusi. Saat itu, sebagai bangsa yang baru lahir, Indonesia berjuang keras agar punya prestasi di tingkat dunia. '
                              'Bung karno sendiri menggelorakan “Nation Building”. Ia menganjurkan agar olahraga bisa menjadi alat untuk mengenalkan Indonesia pada dunia. '
                              'Bung Karno kemudian menerbitkan Kepres No. 263/1963 untuk mencanangkan Indonesia jadi 10 besar dalam bidang olahraga. Tim bulutangkis segera menerjemahkan '
                              'keinginan Bung Karno itu. PBSI pun berpartisipasi dalam IBF tahun 1953.',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                        child: Text(
                          '         Tahun 1958, Indonesia ikut piala Thomas di Singapura. Awalnya, tim bulutangkis Indonesia belum diperhatikan. Zaman itu, tahun 1950-an, '
                              'raksasa bulutangkis ada di Amerika Serikat, Malaya (Malaysia), Inggris, Denmark, dan Thailand. Namun, siapa sangka, Indonesia justru tampil perkasa. '
                              'Dua bintang itu masih zaman susah. Tidak ada ada anggaran yang melimpah untuk pembinaan olahraga. Bahkanm untuk memulangkan Ferry Sonnevile yang sedang '
                              'belajar di Negeri Belanda, PBSI harus mengumpulkan dana melalui “Dompet Ferry Sonnevile” untuk beli tiket pesawat.',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                        child: Text(
                          '         Oleh karena itu, pada saat memberi restu kepada regu Thomas Cup pertama kali saya telah berkata, hai, anak-anakku, kau pergilah pertandingan '
                              'kepertandingan Thomas cup itu. Aku tidak bisa memberi bekal kepadamu daripada permintaan kepadamu, supaya engkau sekalian dedicate engkau punya '
                              'hidup itu kepada sesuatu hal yang luhur dan suci.” Sedemikian pesan Bung Karno kepada tim Thomas Cup Indonesia. ',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 16.0),
                        child: Text(
                          '         Tahun 1961, tim bulutangkis Indonesia kembali merebut piala. Indonesia menumbangkan raksasa Thailand di final. Lalu, di piala Thomas 1964 di '
                              'Tokyo, Jepang, Indonesia kembali menang setelah menumbangkan Denmark. Namun, saat pialaThomas 1967 di Jakarta, Indonesia justru gagal. '
                              'Penyebabnya, Indonesia diskor karena insiden penonton. Namun, di piala Thomas 1970 di Kuala Lumpur, Malaysia, Indonesia berhasil membalasnya.',
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                )),
//            RaisedButton(
//              padding: EdgeInsets.symmetric(vertical: 12.0),
//              onPressed: () async {
//                await Navigator.push(context,
//                    MaterialPageRoute(builder: (context) {
//                  return YoutubeVideoPlayer(
//                      'Video Sejarah Bulutangkis', VideoLinkUtil.SERVICE_URL);
//                }));
//
//                SystemChrome.setPreferredOrientations(
//                    [DeviceOrientation.portraitUp]);
//              },
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Icon(
//                    Icons.ondemand_video,
//                    color: Colors.white,
//                    size: 24.0,
//                  ),
//                  Padding(
//                    padding: EdgeInsets.only(left: 8.0),
//                    child: Text(
//                      'LIHAT VIDEO',
//                      style: TextStyle(color: Colors.white, fontSize: 16.0),
//                    ),
//                  )
//                ],
//              ),
//              color: Colors.blue,
//              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//            )
          ],
        ));
  }
}
