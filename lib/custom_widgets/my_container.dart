import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/mytext.dart';
import 'package:food_app/utils/colors_const.dart';

Widget myContainer({double height, double width: double.infinity, Widget child}){
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: MyColors.white,
      boxShadow: [ //background color of box
        BoxShadow(
          color: MyColors.lightGrey,
          blurRadius: 2.0, // soften the shadow
          spreadRadius: 2.0, //extend the shadow
          offset: Offset(
            1.0, // Move to right 10  horizontally
            1.0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: child,
  );
}

Widget myContainerWithIcon({double height, double width: double.infinity, Widget child, BuildContext context}){
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    height: height*0.6,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: MyColors.white,
      boxShadow: [ //background color of box
        BoxShadow(
          color: MyColors.lightGrey,
          blurRadius: 2.0, // soften the shadow
          spreadRadius: 2.0, //extend the shadow
          offset: Offset(
            1.0, // Move to right 10  horizontally
            1.0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: Stack(
      overflow: Overflow.visible,
      children: [
        Positioned(
          top: -height*0.06,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/burger.png", height: height*0.12,)
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText16(
                    text: "Foodies",
                    color: MyColors.textDark425060,
                  )
                ],
              )
            ],
          ),
        ),

        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: height*0.14,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.05),
            child: child,
          ),
        )
      ],
    ),
  );
}