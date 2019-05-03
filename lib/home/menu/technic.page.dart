import 'package:badminton_trainer/widget/videoplayer.dart';
import 'package:flutter/material.dart';

class TechnicPage extends StatefulWidget {
  @override
  _TechnicPageState createState() {
    return _TechnicPageState();
  }
}

class _TechnicPageState extends State<TechnicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Teknik Dasar'),
        ),
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
                      'Sejarah Bulu Tangkis Lengkap – Bulu tangkis atau yang sering disebut juga dengan sebutan badminton ini '
                          'merupakan suatu permainan olahraga yang cara bermainnya dengan menggunakan alat yang disebut dengan raket dan '
                          'cara memainkannya dimainkan oleh dua orang (untuk permainan tunggal) dan empat orang (untuk permainan ganda) yang '
                          'mana saling berlawanan.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 16.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute '
                          'irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat '
                          'non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return VideoPlayer(
                    'Video Sejarah Bulutangkis',
                    url:
                    'https://drive.google.com/open?id=17CbLfdqJP8viPOs1icVYC53KyXUHmh5W',
                  );
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.ondemand_video,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'LIHAT VIDEO',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  )
                ],
              ),
              color: Colors.blue,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            )
          ],
        ));
  }
}
