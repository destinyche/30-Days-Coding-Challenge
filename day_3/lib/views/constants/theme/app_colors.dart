import 'package:flutter/material.dart';

class AppColors {
  //Gradients Used___________________________________________________________________________

//Linear Gradient Used On Button And Icons
  static LinearGradient orangeGradient = const LinearGradient(colors: [
    Color(0xFFF8A170),
    Color(0xFFFFCD61),
  ]);

  static LinearGradient blackGradient = const LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      stops: [
        0.0,
        0.54,
        1.0,
      ],
      // transform:  ,
      colors: [
        Color(0x70000000),
        Color(0x30000000),
        Color(0x00000000),
      ]);
  static LinearGradient whiteGradient = const LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      stops: [
        0.19,
        1.0,
      ],
      // transform:  ,
      colors: [
        Color(0xFFFFFFFF),
        Color(0x19FFFFFF),
      ]);

//A constant white gradient used on the search initial page
  static LinearGradient whiteGradientFill = const LinearGradient(colors: [
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
  ]);

  static LinearGradient orangeGradientOpaque = const LinearGradient(colors: [
    Color(0x20FFC7A7),
    Color(0x20FFD579),
  ]);

//Colors Used_____________________________________________________________________________

  static Color peach = const Color(0xFFFFB489);
  static Color grayLight = const Color(0xFFDFDEDE);
  static Color blackText = const Color(0xFF393939);
  static Color grayDark = const Color(0xFF616167);
  static Color gray = const Color(0xFF999999);
  static Color white = const Color(0xFFFFFFFF);
}
