import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmashTechnicPage extends StatefulWidget {
  @override
  _SmashTechnicPageState createState() => _SmashTechnicPageState();
}

class _SmashTechnicPageState extends State<SmashTechnicPage> {
  List<String> smash = [
    'Smash penuh.',
    'Smash potong.',
    'Around the head smash.',
    'Backhand smash.',
  ];

  List<String> smashDetail = [
    '         Smash penuh ini dilakukan dengan daun raket seluruhnya dan dilakukan dengan sekuat tenaga.',
    '         Smash ini kurang keras jika dibandingkan dengan smash penuh, tetapi shuttlecock lebih tajam dan lebih terarah dan dilakukan secara menyilang (cross smash).',
    '         Pukulan smash di depan pundak kiri atau bahkan lebih ke kiri, yaitu smash dengan memutar mengitari atas kepala. Around the head smash sangat memerlukan keterampilan gerak pergelangan tangan dan keseimbangan badan untuk menjaga posisi agar bisa tetap berdiri dengan tegak dan tidak sempoyongan.',
    '         Backhand smash, yaitu smash yang dilakukan dari sebelah kiri dan mengutamakan keterampilan pergelangan tangan. Backhand smash ini sangat cocok untuk menyambar shuttlecock yang meluncur tanggung di dekat net.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Teknik Dasar Smash'),
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
                    '         Smash adalah pukulan yang dilakukan dengan cepat dan sekeras-kerasnya ke arah bawah lapangan lawan. ',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Image.asset(
                    'assets/technic/smash_instruction.png',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Ada beberapa macam pukulan smash, yaitu sebagai berikut.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Column(
                    children: List.generate(smash.length, (index) {
                      return Column(
                        children: <Widget>[
                          Flex(
                            direction: Axis.horizontal,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('${(index + 1)}).'),
                              SizedBox(
                                width: 4.0,
                              ),
                              Flexible(
                                  child: Text(
                                    smash[index],
                                    maxLines: 3,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            smashDetail[index],
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                        ],
                      );
                    }),
                  ),
                  Image.asset(
                    'assets/technic/backhand_smash_instruction.png',
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
                        return YoutubeVideoPlayer('Video Dasar Dropshot 1',
                            VideoLinkUtil.DROPSHOT_URL);
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
                        return YoutubeVideoPlayer('Video Dasar Dropshot 2',
                            VideoLinkUtil.DROPSHOT_URL);
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
