import 'package:badminton_trainer/util/videolink.util.dart';
import 'package:badminton_trainer/widget/youtubevideoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FootworkTechnicPage extends StatefulWidget {
  @override
  _FootworkTechnicPageState createState() => _FootworkTechnicPageState();
}

class _FootworkTechnicPageState extends State<FootworkTechnicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Teknik Dasar Footwork'),
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
                    '         Teknik dasar bulutangkis tentu akan mempermudah pemain untuk memperoleh kesempatan menang. Untuk itu, teknik dasar dalam permainan ini tidak bisa disepelekan. Pelajarilah satu persatu dengan benar. Dengan mengetahui teknik dasarnya, pemain akan mampu menjadi pemain hebat bulutangkis.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    '         Selain cara memegang grip, pemain juga harus memperhatikan cara beridirinya. Dalam permainan bulutangkis, berdiri pun ada tekniknya. Posisi berdiri ketika di lapangan yang benar yaitu berada pada bagian tengah lapangan dengan kaki agak membuka dan lutut ditekuk. Buatlah badan tetap rileks dan nyaman. Posisi tersebut sangat membantu ketika akan melakukan footwork. Siap siaga dalam footwork tentu membuat lawan susah untuk mendapatkan poin.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    '         Footwork atau gerak langkah kaki yang menjadi dasar awal langkah dalam pengembalian shuttlecock seperti halnya yang dijelaskah oleh Grice (2004:23) “footwok merupakan gerakan dalam lapangan bulutangkis mencakup menggapai shuttlecock dengan langkah sedikit mungkin sambil terus tetap mempertahankan keseimbangan yang baik dan menjaga tubuh agar tetap berada di bawah kontrol”. Sedangkan pool (2004:50) menjelaskan “footwok merupakan upaya pemain dapat bergerak seifisien mungkin ke segala bagian dari lapangan”. Footwork (gerak langkah kaki) merupakan dasar untuk bisa mneghasilkan pukulan berkualitas, yaitu apabila dilakukan dalam posisi baik (Akhsan, 2012:61).',
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
                  return YoutubeVideoPlayer('Video Teknik Dasar Footwork',
                      VideoLinkUtil.FOOTWORK_URL);
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
