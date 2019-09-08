import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DropShotTechnicPage extends StatefulWidget {
  @override
  _DropShotTechnicPageState createState() => _DropShotTechnicPageState();
}

class _DropShotTechnicPageState extends State<DropShotTechnicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Teknik Dasar Dropshot'),
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
                    '         Pukulan dropshot dalam permainan bulutangkis dilakukan dengan tujuan menempatkan bola secepatnya dan sedekat-dekatnya dengan net pada lapangan lawan. Dropshot dapat dilakukan dari bagian atas dan bagian bawah. Dropshot atas terdiri atas dua macam, yaitu dropshot penuh dengan arah yang menukik tajam dan digunakan pada permainan tunggal, dan dropshot potong, yaitu gerakan raket menyentuh bola tanpa menahan gerak tersebut.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Image.asset(
                    'assets/technic/dropshot_instruction.png',
                  ),
                ],
              ),
            )),
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Flexible(
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    onPressed: () async {
                      await Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return YoutubeVideoPlayer(
                                'Video Dasar Dropshot 1', VideoLinkUtil.DROPSHOT_URL);
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
                            'LIHAT VIDEO 1',
                            style:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        )
                      ],
                    ),
                    color: Colors.blue,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  flex: 1,
                ),
                Container(
                  height: 48.0,
                  width: 1.0,
                ),
                Flexible(
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    onPressed: () async {
                      await Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return YoutubeVideoPlayer(
                                'Video Dasar Dropshot 2', VideoLinkUtil.DROPSHOT_URL);
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
                            'LIHAT VIDEO 2',
                            style:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        )
                      ],
                    ),
                    color: Colors.blue,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  flex: 1,
                ),
              ],
            )
          ],
        ));
  }
}
