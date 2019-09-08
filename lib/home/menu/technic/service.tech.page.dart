import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ServiceTechnicPage extends StatefulWidget {
  @override
  _ServiceTechnicPageState createState() => _ServiceTechnicPageState();
}

class _ServiceTechnicPageState extends State<ServiceTechnicPage> {
  List<String> services = [
    'Servis panjang (long service).',
    'Servis pendek (short service).',
    'Flick service.',
  ];

  List<String> servicesDetail = [
    '         Servis panjang dilakukan dengan memukul shuttlecock dari bawah dan diarahkan ke bagian belakang atas lapangan permainan lawan.',
    '         Servis pendek diarahkan ke bagian depan lapangan lawan dan biasanya dilakukan pada permainan ganda.',
    '         Flick service adalah cara yang dilakukan seperti servis pendek, namun pada saat hampir menyentuh shuttlecock secara tiba-tiba pergelangan tangan dilecutkan sehingga laju shuttlecock menjadi kencang dan melambung ke bagian belakang daerah servis. Jenis servis ini banyak digunakan pada permainan ganda.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Teknik Dasar Service'),
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
                    '         Servis dapat dilakukan dengan tiga cara sebagai berikut.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Image.asset(
                    'assets/technic/service_instruction.png',
                  ),
                  SizedBox(
                    height: 8.0,
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
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              onPressed: () async {
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return YoutubeVideoPlayer(
                      'Video Dasar Service', VideoLinkUtil.SERVICE_URL);
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
