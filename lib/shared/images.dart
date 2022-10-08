import 'package:flutter/material.dart';

class MyImages {
  static Image getHomeLogoImg({double height = 180}) {
    return Image(
      height: height,
      image: const AssetImage("images/homeLogo.png"),
    );
  }
}
