import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:food_app/utils/colors_const.dart';
import 'package:food_app/utils/font_sizes.dart';
import 'package:food_app/utils/image_helper.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _typeAheadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.yelloappbarFFF5B0,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 10),
            child: Row(
              children: [
                SizedBox(height: height * 0.12),
                Image.asset(
                 AppImages.ic_menu,
                  scale: 4,
                ),
                SizedBox(width: width * 0.7),
                Image.asset(
                  AppImages.ic_Notification,
                  scale: 4,
                ),
                SizedBox(width: width * 0.09),
                Image.asset(
                  AppImages.ic_beg,
                  scale: 4,
                ),
              ],
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            height: height * 0.2,
            color: MyColors.yelloappbarFFF5B0,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  top: height*0.05,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // shape: BoxShape.circle,
                            // border: Border.all(width: 5.0, color: Colors.white),
                          ),
                          child: TypeAheadField(
                              textFieldConfiguration: TextFieldConfiguration(
                                  autofocus: true,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      hintText: "Search food",
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: MyColors.textDark425060,
                                      ),
                                      suffixIcon: Image.asset(
                                        AppImages.ic_filter,
                                        scale: 4,
                                      )),
                                  controller: this._typeAheadController),
                              suggestionsCallback: (pattern) async {
                                Completer<List<String>> completer =
                                new Completer();
                                completer.complete(<String>[
                                  "Burger",
                                  "Pizza",
                                  "SandWich",
                                  "Drinks"
                                ]);
                                return completer.future;
                              },
                              itemBuilder: (context, suggestion) {
                                return ListTile(
                                    title: Text(
                                      suggestion,
                                      style: TextStyle(
                                        color: MyColors.textDark425060,
                                        fontSize: ScreenUtil().setSp(16),
                                      ),
                                    ));
                              },
                              onSuggestionSelected: (suggestion) {
                                this._typeAheadController.text = suggestion;
                              }),
                        ),
                      ),
                      ],
                    ),
                ),

                Positioned(
                  bottom: -40,
                  height: height*0.11,
                  width: width,
                  child: ListView.builder(
                      itemCount: 8,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 4,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: MyColors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          width: width * 0.22,
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Image.asset(
                                  AppImages.ic_burger,
                                  height: 35,
                                ),
                              ),
                              Text("Burger")
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.1),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Container(
              height: height*0.19,
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyColors.yelloappbarFFF5B0,
                borderRadius: BorderRadius.circular(20)
              ),


              child: Row(
                children: [
                  Image.asset(AppImages.img_burger,scale: 4,),
                  SizedBox(width: width*0.07),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("30% Discount",style: TextStyle(fontSize: FontSizes.textSize22,fontWeight: FontWeight.w500),),
                      SizedBox(width: height*0.1),
                      Text("Order any from app\nand get the discount",style: TextStyle(fontSize: FontSizes.textSize12),),

                      FlatButton(
                      height: 40,
                        minWidth: width*0.4,
                        color: MyColors.yellowButtonFFD24E,
                        child: Text("Order Now", style: TextStyle(fontSize: FontSizes.textSize15, color: MyColors.textDark252C34),),
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                        onPressed: (){},
                          ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.02),
         Padding(
           padding: const EdgeInsets.only(left: 15,right: 15),
           child: Row(
             children: [
               Text("Popular Food",style: TextStyle(fontSize: 16),),
               SizedBox(width: width * 0.45),
               Text("See all",style: TextStyle(color: MyColors.yellowButtonFFD24E,fontSize: 14),),

                 Icon(Icons.arrow_forward_ios,color: MyColors.yellowButtonFFD24E,)
             ],
           ),
         )
        ],
      ),
    );
  }
}
