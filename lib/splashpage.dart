import 'package:badminton_trainer/home/home.page.dart';
import 'package:flutter/material.dart';

class SplashscreenPage extends StatefulWidget {
  @override
  _SplashscreenPageState createState() {
    return _SplashscreenPageState();
  }
}

class _SplashscreenPageState extends State<SplashscreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.android,
              size: 96.0,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'BADMINTON TRAINER',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
