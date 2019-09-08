import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmashOnePage extends StatefulWidget {
  @override
  _SmashOnePageState createState() => _SmashOnePageState();
}

class _SmashOnePageState extends State<SmashOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Smash Latihan Model 1'),
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
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute '
                      'irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat '
                      'non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
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
              onPressed: () async {
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return YoutubeVideoPlayer(
                      'Video Smash Latihan Model 1', VideoLinkUtil.SMASH_URL);
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
