import 'package:flutter/material.dart';

class MenuItem {
  String title;
  bool isPdf;
  String assetName;
  Color backgroundColor;

  MenuItem(this.title, this.isPdf, this.assetName, {this.backgroundColor}) {
    backgroundColor = backgroundColor == null ? Colors.blue : backgroundColor;
  }
}
