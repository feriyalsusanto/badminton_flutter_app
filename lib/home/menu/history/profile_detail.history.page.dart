import 'package:badminton_trainer/home/menu/history/profile.history.page.dart';
import 'package:badminton_trainer/home/menu/history/profile_json.dart';
import 'package:flutter/material.dart';

class ProfileDetailPage extends StatefulWidget {
  final ProfileModel profile;
  final int index;

  ProfileDetailPage({@required this.profile, @required this.index});

  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  Map<String, dynamic> profileJson;

  @override
  void initState() {
    switch (widget.index) {
      case 0:
        profileJson = ProfileJson.profileJsonRudyHartono();
        break;
      case 1:
        profileJson = ProfileJson.profileJsonLiemSwieKing();
        break;
      case 2:
        profileJson = ProfileJson.profileJsonChristianHadinata();
        break;
      case 3:
        profileJson = ProfileJson.profileJsonTanJoeHok();
        break;
      case 4:
        profileJson = ProfileJson.profileJsonAlanBudiKusuma();
        break;
      case 5:
        profileJson = ProfileJson.profileJsonSusiSusanti();
        break;
      case 6:
        profileJson = ProfileJson.profileJsonTaufikHidayat();
        break;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile ${widget.profile.title}'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              widget.profile.assetPath,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 16.0,
            ),
            generateText('summary'),
            Text(
              'Masa Kecil',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            generateText('childhood'),
            Text(
              'Awal Karir',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            generateText('career'),
          ],
        ),
      ),
    );
  }

  generateText(String key) {
    bool hasNext = true;
    int index = 0;

    List<Widget> text = [];

    while (hasNext) {
      if (profileJson['$key$index'] != null) {
        text.add(Text(
          profileJson['$key$index'],
          textAlign: TextAlign.justify,
        ));
        text.add(SizedBox(
          height: 4.0,
        ));

        index++;
      } else {
        hasNext = false;
      }
    }

    return Column(
      children: text,
    );
  }
}
