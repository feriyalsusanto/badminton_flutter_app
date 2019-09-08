import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AgilityPhyPage extends StatefulWidget {
  @override
  _AgilityPhyPageState createState() => _AgilityPhyPageState();
}

class _AgilityPhyPageState extends State<AgilityPhyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Latihan Fisik Kelincahan'),
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
                        '         Kelincahan merupakan suatu gerakan yang mengubah arah tanpa kehilangan keseimbangan. Latihan kelincahan ini sangat dibutuhkan dalam permainan bulutangkis, karena di dalam permainanya cepat dalam mengajangkau bola dari depan, belakang, kanan dan samping. Hal tersebut, membuat latihan kelincahan merupakan salah satu hal yang penting.',
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
                      return YoutubeVideoPlayer(
                          'Video Latihan Fisik Kelincahan', VideoLinkUtil.KELINCAHAN_URL);
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
