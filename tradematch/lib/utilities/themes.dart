import 'package:flutter/material.dart';

Color layoutBlue = const Color.fromARGB(255, 0, 195, 255);
Color navigationBar_white = const Color.fromARGB(255, 255, 255, 255);
Color connection_grey = const Color.fromARGB(255, 216, 216, 216);
Color advertButton_blue = const Color.fromARGB(255, 0, 89, 255);

BoxDecoration layoutDecoration() {
  return BoxDecoration(
      color: navigationBar_white,
      border: Border.all(color: layoutBlue, width: 8));
}

BoxDecoration ConnectionDecoration() {
  return BoxDecoration(
      color: connection_grey, border: Border.all(color: layoutBlue, width: 8));
}

BoxDecoration AdvertViewDecoration() {
  return BoxDecoration(
      color: connection_grey, border: Border.all(color: layoutBlue, width: 8));
}

ButtonStyle AdvertButton() {
  return ElevatedButton.styleFrom(backgroundColor: advertButton_blue);
}

TextStyle logoTextStyle() {
  return TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40);
}

TextStyle navigationTabTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 20);
}

TextStyle navigationSelectedTabTextStyle() {
  return TextStyle(
      color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30);
}

TextStyle profileTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 20);
}

TextStyle MainHeaderTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 50);
}

TextStyle SubHeaderATextStyle() {
  return TextStyle(color: const Color.fromARGB(255, 83, 83, 83), fontSize: 15);
}

TextStyle ConnectionSelectionHeaderTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 15);
}

TextStyle ConnectionSelectedHeaderTextStyle() {
  return TextStyle(
      color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20);
}
