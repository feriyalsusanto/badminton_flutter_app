import 'package:badminton_trainer/splashpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Badminton Trainer',
      theme: ThemeData(
          primarySwatch: Colors.blue, appBarTheme: AppBarTheme(elevation: 0.0)),
      home: SplashscreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
