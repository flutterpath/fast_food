import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:food_app/utils/colors_const.dart';
import 'package:food_app/utils/font_sizes.dart';
import 'package:food_app/utils/text_styles.dart';

class MyText24 extends StatelessWidget {
  final String text;
  final double fontSize = FontSizes.textSize20;
  final Color color;
  final FontWeight fontWeight = MyTextWeight.fontWeight("Medium");
  final TextAlign align;

  MyText24({this.text, this.color : MyColors.textDark425060, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: fontWeight, color: color, fontSize: fontSize,), textAlign: align,);
  }
}

class MyTextBold18 extends StatelessWidget {
  final String text;
  final double fontSize = FontSizes.textSize18;
  final Color color;
  final FontWeight fontWeight = MyTextWeight.fontWeight("SemiBold");
  final TextAlign align;

  MyTextBold18({this.text, this.color, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: fontWeight, color: color, fontSize: fontSize,), textAlign: align,);
  }
}

class MyText16 extends StatelessWidget {
  final String text;
  final double fontSize = FontSizes.textSize16;
  final Color color;
  final FontWeight fontWeight = MyTextWeight.fontWeight("Medium");
  final TextAlign align;

  MyText16({this.text, this.color, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: fontWeight, color: color, fontSize: fontSize,), textAlign: align,);
  }
}

class MyTextBold16 extends StatelessWidget {
  final String text;
  final double fontSize = FontSizes.textSize16;
  final Color color;
  final FontWeight fontWeight = MyTextWeight.fontWeight("SemiBold");
  final TextAlign align;

  MyTextBold16({this.text, this.color, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: fontWeight, color: color, fontSize: fontSize,), textAlign: align,);
  }
}

class MyText14 extends StatelessWidget {
  final String text;
  final double fontSize = FontSizes.textSize14;
  final Color color;
  final FontWeight fontWeight = MyTextWeight.fontWeight("Medium");
  final TextAlign align;

  MyText14({this.text, this.color : MyColors.textDark425060, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: fontWeight, color: color, fontSize: fontSize,), textAlign: align,);
  }
}

class MyTextBold14 extends StatelessWidget {
  final String text;
  final double fontSize = FontSizes.textSize14;
  final Color color;
  final FontWeight fontWeight = MyTextWeight.fontWeight("SemiBold");
  final TextAlign align;

  MyTextBold14({this.text, this.color, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: fontWeight, color: color, fontSize: fontSize,), textAlign: align,);
  }
}

class MyText12 extends StatelessWidget {
  final String text;
  final double fontSize = FontSizes.textSize12;
  final Color color;
  final FontWeight fontWeight = MyTextWeight.fontWeight("Medium");
  final TextAlign align;

  MyText12({this.text, this.color, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: fontWeight, color: color, fontSize: fontSize, wordSpacing: 4.0, letterSpacing: 0.8), textAlign: align,);
  }
}

class MyTextBold12 extends StatelessWidget {
  final String text;
  final double fontSize = FontSizes.textSize12;
  final Color color;
  final FontWeight fontWeight = MyTextWeight.fontWeight("SemiBold");
  final TextAlign align;

  MyTextBold12({this.text, this.color, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: fontWeight, color: color, fontSize: fontSize,), textAlign: align,);
  }
}