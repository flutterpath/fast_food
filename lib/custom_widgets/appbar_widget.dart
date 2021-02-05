import 'package:flutter/material.dart';
import 'package:food_app/utils/colors_const.dart';

class MyAppBar extends StatelessWidget {

  final String title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        color: MyColors.textDark252C34,
        icon: Icon(Icons.arrow_back_ios),
        onPressed: (){},
      ),

      title: Text(title,style: TextStyle(color: MyColors.textDark252C34),),

      elevation: 0.0,
    );
  }
}
