import 'package:flutter/material.dart';

Color layoutBlue = const Color.fromARGB(255, 0, 195, 255);
Color navigationBar_white = const Color.fromARGB(255, 255, 255, 255);

BoxDecoration layoutDecoration() {
  return BoxDecoration(
      color: navigationBar_white,
      border: Border.all(color: layoutBlue, width: 8));
}

TextStyle navigationTabTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 20);
}

TextStyle profileTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 20);
}
