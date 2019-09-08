import 'package:badminton_trainer/home/menu/history/profile_detail.history.page.dart';
import 'package:flutter/material.dart';

class ProfileHistoryPage extends StatefulWidget {
  @override
  _ProfileHistoryPageState createState() => _ProfileHistoryPageState();
}

class _ProfileHistoryPageState extends State<ProfileHistoryPage> {
  List<ProfileModel> profiles = [
    ProfileModel(
        title: 'Rudy Hartono',
        assetPath: 'assets/profile/profile_rudy_hartono.png'),
    ProfileModel(
        title: 'Liem Swie King',
        assetPath: 'assets/profile/profile_liem_swie_king.png'),
    ProfileModel(
        title: 'Christian Hadinata',
        assetPath: 'assets/profile/profile_christian_hadinata.png'),
    ProfileModel(
        title: 'Tan Joe Hok',
        assetPath: 'assets/profile/profile_tan_joe_hok.png'),
    ProfileModel(
        title: 'Alan Budi Kusuma',
        assetPath: 'assets/profile/profile_alan_budi_kusuma.png'),
    ProfileModel(
        title: 'Susi Susanti',
        assetPath: 'assets/profile/profile_susi_susanti.png'),
    ProfileModel(
        title: 'Taufik Hidayat',
        assetPath: 'assets/profile/profile_taufik_hidayat.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.separated(
            itemBuilder: (context, index) {
              ProfileModel profile = profiles[index];

              return ListTile(
                contentPadding: EdgeInsets.all(8.0),
                title: Text(
                  profile.title,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                leading: Image.asset(
                  profile.assetPath,
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfileDetailPage(
                      index: index,
                      profile: profile,
                    );
                  }));
                },
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 1.0,
                color: Colors.grey,
              );
            },
            itemCount: profiles.length));
  }
}

class ProfileModel {
  String title;
  String assetPath;
  String summary;
  String career;

  ProfileModel({@required this.title, @required this.assetPath});
}
