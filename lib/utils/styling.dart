import 'package:flutter/material.dart';

class Styles {
  static Color activeGreen = const Color(0x00008000);
  static Color passiveGreen = const Color(0x0079b979);
  static Color activeWhite = const Color(0xffffffff);
  static Color passiveWhite = const Color(0xf2f2f2f2);
  static Color passiveBlack = const Color(0x00333333);
  static Color activeBlack = Colors.black;

  //FONT STYLES
  static TextStyle header1 = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);

  static TextStyle header2 = const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle header3 = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white);
  static TextStyle feint = TextStyle(
      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey[600]);

  static TextStyle radioText = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black);
}
