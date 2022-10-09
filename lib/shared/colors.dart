// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

enum btn_colors { blue, red, green, orange }

/// To add any color, make sure its [STATIC].
/// To use a color, call it [MyColors.colorTest]
class MyColors {
  static BoxDecoration background_BoxDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            //old colors
            // Color.fromARGB(255, 56, 54, 54),
            // Color.fromARGB(255, 223, 220, 220),

            Colors.grey.shade800,
            Colors.grey.shade500,
          ]),
    );
  }

  static List<Color> getMaterialColor_BasedOnENum(btn_colors colorname) {
    if (colorname == btn_colors.blue) {
      return [
        Colors.blue.shade400,
        Colors.blue,
        Colors.blue.shade600,
        Colors.blue.shade900,
      ];
    }
    if (colorname == btn_colors.red) {
      return [
        Colors.red.shade400,
        Colors.red,
        Colors.red.shade600,
        Colors.red.shade900,
      ];
    }
    if (colorname == btn_colors.green) {
      return [
        Colors.green.shade400,
        Colors.green,
        Colors.green.shade600,
        Colors.green.shade900,
      ];
    }
    if (colorname == btn_colors.orange) {
      return [
        Colors.orange.shade400,
        Colors.orange,
        Colors.orange.shade600,
        Colors.orange.shade900,
      ];
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

  static Color appBarColor = const Color.fromARGB(255, 27, 27, 28);
}
