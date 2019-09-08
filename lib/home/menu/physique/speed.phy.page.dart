import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SpeedPhyPage extends StatefulWidget {
  @override
  _SpeedPhyPageState createState() => _SpeedPhyPageState();
}

class _SpeedPhyPageState extends State<SpeedPhyPage> {
  List<String> speeds = [
    'Melakukan jongshuttlecock berdiri dan juga kemudian berlari jarak dekat dalam kecepatan tinggi.',
    'Menggunakan rintangan dan beban atau yang lainnya untuk meningkatkan kualitas latihan.',
    'Melakukan aktivitas lari bolak-balik dengan jarak 6 meter.',
    'Melakukan lari jarak dekat saja, namun dengan kecepatan tinggi.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Latihan Fisik Kecepatan'),
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
                    '         Seperti yang sudah disebutkan sebelumnya, kecepatan merupakan salah satu faktor yang mendukung performa permainan bulutangkis. Dan agar pemain bisa bergerak cepat, latihlah kecepatan kaki atau tungkai supaya gerakan bisa lebih cekatan baik dalam mengembalikan shuttlecock, menyerang, hingga mengubah arah gerakan secara tiba-tiba dengan tidak kehilangan keseimbangan.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    '         Ada sejumlah bentuk latihan yang perlu untuk dilakukan oleh para pemain bulutangkis dalam hal peningkatan kecepatan dan berikut ini adalah latihan fisik yang diperlukan:',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Column(
                    children: List.generate(speeds.length, (index) {
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
                                speeds[index],
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
            )),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              onPressed: () async {
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return YoutubeVideoPlayer('Video Latihan Fisik Kecepatan',
                      VideoLinkUtil.KECEPATAN_URL);
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
