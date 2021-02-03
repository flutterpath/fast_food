import 'package:flutter/material.dart';

class MyTextWeight {
  static FontWeight fontWeight(String weight) {
    if (weight == "Regular") {
      return FontWeight.w200;
    } else if (weight == "Medium") {
      return FontWeight.w300;
    } else if (weight == "SemiBold") {
      return FontWeight.w400;
    } else if (weight == "Bold") {
      return FontWeight.bold;
    }
  }
}

class MyTextAlignment{
  static TextAlign fontAlign(String weight) {
    if (weight == "left") {
      return TextAlign.left;
    } else if (weight == "right") {
      return TextAlign.right;
    } else if (weight == "center") {
      return TextAlign.center;
    } else if (weight == "justify") {
      return TextAlign.justify;
    } else if (weight == "start") {
      return TextAlign.start;
    } else if (weight == "end") {
      return TextAlign.end;
    }
  }
}