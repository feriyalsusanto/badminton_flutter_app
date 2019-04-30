import 'package:flutter/material.dart';

class MenuItem {
  String title;
  String subtitle;
  String assetName;
  Color backgroundColor;

  MenuItem(this.title, this.subtitle, this.assetName, {this.backgroundColor}) {
    backgroundColor = backgroundColor == null ? Colors.blue : backgroundColor;
  }
}
