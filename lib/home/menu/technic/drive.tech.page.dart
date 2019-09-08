import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DriveTechnicPage extends StatefulWidget {
  @override
  _DriveTechnicPageState createState() => _DriveTechnicPageState();
}

class _DriveTechnicPageState extends State<DriveTechnicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Teknik Dasar Drive'),
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
                    '         Pukulan ini dalam bulutangkis biasa digunakan untuk menekan lawan atau untuk tidak memberikan kesempatan kepada lawan mendapatkan bola-bola melambung sehingga lawan tidak mendapat kesempatan menyerang dengan pukulan overhead',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Image.asset(
                    'assets/technic/drive_instruction.png',
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
                      'Video Dasar Drive', VideoLinkUtil.DRIVE_URL);
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
