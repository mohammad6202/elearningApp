// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../Home.dart';

class MyWidgets {
  static IconButton BtnToGo_Home(BuildContext context) {
    return IconButton(
        onPressed: (() {
          Navigator.pop(context, MaterialPageRoute(builder: (context) {
            return const Home();
          }));
        }),
        icon: Icon(Icons.home_filled));
  }
}
