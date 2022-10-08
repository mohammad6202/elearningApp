// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

enum btn_colors { blue, red, green, orange }

/// To add any color, make sure its [STATIC].
/// To use a color, call it [MyColors.colorTest]
class MyColors {
  // static Colors colorTest = Colors.redAccent;
  static List<Color> getMaterialColor_BasedOnENum(btn_colors colorname) {
    if (colorname == btn_colors.blue) {
      return [Colors.blue.shade200, Colors.blue, Colors.blue.shade400];
    }
    if (colorname == btn_colors.red) {
      return [Colors.red.shade200, Colors.red, Colors.red.shade400];
    }
    if (colorname == btn_colors.green) {
      return [Colors.green.shade200, Colors.green, Colors.green.shade400];
    }
    if (colorname == btn_colors.orange) {
      return [Colors.orange.shade200, Colors.orange, Colors.orange.shade400];
    }
    return [];
  }

  static BoxDecoration buttonBackground(btn_colors colorname) {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: getMaterialColor_BasedOnENum(colorname),
      ),
      borderRadius: BorderRadius.circular(30),
    );
  }
}
