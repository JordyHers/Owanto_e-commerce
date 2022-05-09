import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColorRed = Color(0xffDB3022);
  static const Color primaryColorGray = Color(0xff9B9B9B);
  static const Color primaryColorBlack = Colors.black;
}


// This Function creates a material color from HEX color value
MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
const MaterialColor kPrimaryColor = MaterialColor(
  0xFF0E7AC7,
  <int, Color>{
    50: Colors.black12,
    100: Colors.black26,
    200: Colors.black38,
    300: Colors.black45,
    400: Colors.black54,
    500: Colors.black,
    600: Colors.black,
    700: Colors.black,
    800: Colors.black,
    900: Colors.black,
  },
);
