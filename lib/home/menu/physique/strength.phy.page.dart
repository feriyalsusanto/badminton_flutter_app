import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StrengthPhyPage extends StatefulWidget {
  @override
  _StrengthPhyPageState createState() => _StrengthPhyPageState();
}

class _StrengthPhyPageState extends State<StrengthPhyPage> {
  List<String> strength = [
    'Melakukan gerakan jongkok berdiri agar bisa meningkatkan kemampuan kekuatan tungkai.',
    'Lompat-lompat di tempat atau juga sambil bergerak dengan tujuan yang sama seperti poin sebelumnya.',
    'Memperkuat otot pinggang dan punggung.',
    'Mengangkat kaki ketika baru saja bangun tidur.',
    'Mendorong (bisa dengan pull up atau push up).',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Latihan Fisik Kekuatan'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    '         Kekuatan merupakan salah satu faktor penting yang harus dimiliki setiap pemain bulutangkis agar bisa bermain secara optimal. Untuk meningkatkan kemampuan kekuatan tubuh, latihan dengan memanfaatkan beban adalah yang paling baik.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    '         Istilah lain untuk latihan ini adalah weight training dan contoh hal-hal yang perlu dikenali lebih dulu sebelum masuk dan mengikuti program latihannya antara lain adalah:',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Column(
                    children: List.generate(strength.length, (index) {
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
                                width: 8.0,
                              ),
                              Flexible(
                                  child: Text(
                                strength[index],
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
                  Text(
                    '         Ketika sudah memakai beban, sangatlah disarankan untuk tak melakukannya sambil melompat di tempat secara keras. Hal ini berisiko tinggi memicu cedera dan bahkan bisa berakibat buruk untuk kesehatan lutut maupun pinggang.',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              onPressed: () async {
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return YoutubeVideoPlayer('Video Latihan Fisik Kekuatan',
                      VideoLinkUtil.KEKUATAN_URL);
                }));

                SystemChrome.setPreferredOrientations(
                    [DeviceOrientation.portraitUp]);
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
