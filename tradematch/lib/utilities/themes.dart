import 'package:flutter/material.dart';

Color layoutBlue = const Color.fromARGB(255, 0, 195, 255);
Color navigationBar_white = const Color.fromARGB(255, 255, 255, 255);
Color connection_grey = const Color.fromARGB(255, 173, 173, 173);

BoxDecoration layoutDecoration() {
  return BoxDecoration(
      color: navigationBar_white,
      border: Border.all(color: layoutBlue, width: 8));
}

BoxDecoration ConnectionDecoration() {
  return BoxDecoration(
      color: connection_grey, border: Border.all(color: layoutBlue, width: 8));
}

TextStyle navigationTabTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 20);
}

TextStyle profileTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 20);
}

TextStyle MainHeaderTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 50);
}

TextStyle SubHeaderATextStyle() {
  return TextStyle(color: Colors.grey, fontSize: 15);
}

TextStyle ConnectionSelectionHeaderTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 15);
}
