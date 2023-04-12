import 'package:flutter/material.dart';
class Declarations {
  String myUri01 = "http://localhost:3020";
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 201, 29, 126),
      Color.fromARGB(255, 221, 125, 187),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(41, 64, 2, 1.0);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundColor = Color(0xffabacd3);
  static var selectedNavBarColor = const Color.fromARGB(255, 41, 59, 185);
  static const unselectedNavBarColor = Color.fromARGB(255, 0, 0, 0);
}