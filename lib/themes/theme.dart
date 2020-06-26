import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFFFDBF00);
const accentColor = const Color(0xFFFFFFFF);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      button: TextStyle(
        fontFamily: "Montserrat",
      ),
      caption: TextStyle(
        fontFamily: "Montserrat",
      ),
      overline: TextStyle(
        fontFamily: "Montserrat",
      ),
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
  );
}
