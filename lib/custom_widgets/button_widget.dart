import 'package:flutter/material.dart';
import 'package:food_app/utils/colors_const.dart';
import 'package:food_app/utils/font_sizes.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function() myPress;

  MyButton({this.text, this.myPress});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 50,
      minWidth: double.infinity,
      color: MyColors.yellowButtonFFD24E,
      child: Text(text, style: TextStyle(fontSize: FontSizes.textSize16, color: MyColors.white),),
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
      onPressed: myPress,
    );
  }
}
