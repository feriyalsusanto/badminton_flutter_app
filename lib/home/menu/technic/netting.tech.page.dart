import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NettingTechnicPage extends StatefulWidget {
  @override
  _NettingTechnicPageState createState() => _NettingTechnicPageState();
}

class _NettingTechnicPageState extends State<NettingTechnicPage> {
  List<String> netting = [
    'Shuttlecock harus diambil di atas atau setinggi mungkin;',
    'Lambungan shuttlecock harus serendah mungkin dengan net;',
    'Jatuhnya bola harus serapat mungkin dengan net.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Teknik Dasar Netting'),
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
                    '         Pukulan-pukulan dalam permainan net merupakan pukulan-pukulan yang sangat sulit dalam permainan bulutangkis. Hal ini dikarenakan permainan net ini banyak memerlukan kecermatan dengan penuh perasaan (feeling). Faktor tenaga tidak diperlukan sama sekali, akan tetapi perasaan tenang sangat menentukan keberhasilan pukulan net. ',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Image.asset(
                    'assets/technic/netting_instruction.png',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Beberapa prinsip permainan netting adalah:',
                    textAlign: TextAlign.justify,
                  ),
                  Column(
                    children: List.generate(netting.length, (index) {
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
                                netting[index],
                                maxLines: 3,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                        ],
                      );
                    }),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    '         Shuttlecock harus diambil sewaktu masih di atas karena apabila diambil setelah shuttlecock di bawah akan memperlambat tempo permainan dan dapat memberi kesempatan kepada lawan untuk maju mengambil shuttlecock. Jatuhnya shuttlecock dibuat serapat mungkin dengan net sehingga lawan kesulitan untuk mengembalikannya. Karena terlalu dekat dengan net maka pengembalian shuttlecock lawan ada kemungkinan tanggung dan dapat dengan mudah kita sambar bola tersebut untuk mendapatkan poin.',
                    textAlign: TextAlign.justify,
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
                            'Video Dasar Netting 1', VideoLinkUtil.NETTING_URL);
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
                            'Video Dasar Netting 2', VideoLinkUtil.NETTING_URL);
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
