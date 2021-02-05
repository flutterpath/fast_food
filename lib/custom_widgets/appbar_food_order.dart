import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/utils/colors_const.dart';

class MyAppBar extends StatelessWidget {

  final String title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
     actions: [
       Row(
         children: [
           IconButton(
             color: MyColors.textDark425060,
             icon: Icon(Icons.arrow_back_ios),
             onPressed: (){},
           ),
           Image.asset("assets/icon/ic_notification.png"),
           Image.asset("assets/icon/ic_beg.png"),
         ],
       )
     ],


      elevation: 0.0,
    );
  }
}
