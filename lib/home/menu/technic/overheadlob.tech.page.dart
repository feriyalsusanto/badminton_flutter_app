import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OverheadLobTechnicPage extends StatefulWidget {
  @override
  _OverheadLobTechnicPageState createState() => _OverheadLobTechnicPageState();
}

class _OverheadLobTechnicPageState extends State<OverheadLobTechnicPage> {
  List<String> services = [
    'Lob Serang',
    'Lob Penangkis',
  ];

  List<String> servicesDetail = [
    '         Lob serang ada dua macam, yaitu dari atas dan dari bawah. Lob serang dari atas adalah bola diambil dari depan badan atas kepala, dilambungkan rendah dan cepat. Lob serang dari bawah adalah bola diambil dari bawah, dilambungkan agak rendah dan cepat. Tujuan dari lob serang adalah digunakan untuk menyerang.',
    '         Lob penangkis dari atas adalah bola diambil dari depan badan di atas kepala, dilambungkan tinggi dan jauh sampai garis belakang. Sebaliknya, pada lob penangkis dari bawah, bola diambil dari bawah, dilambungkan tinggi dan jauh ke belakang. Tujuan dari lob penangkis adalah untuk mempertahankan serangan.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Teknik Dasar Overhead Lob'),
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
                    '         Pukulan lob dapat dilakukan baik dari bawah atau dari atas kepala. Pukulan lob sangat penting bagi pola pertahanan ataupun pola penyerangan.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Image.asset(
                    'assets/technic/overheadlob_instruction.png',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Ada beberapa jenis lob, yaitu sebagai berikut.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Column(
                    children: List.generate(services.length, (index) {
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
                                    services[index],
                                    maxLines: 3,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            servicesDetail[index],
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                        ],
                      );
                    }),
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
                            'Video Dasar Overhead Lob 1', VideoLinkUtil.LOB_URL);
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
                            'Video Dasar Overhead Lob 2', VideoLinkUtil.LOB_URL);
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
