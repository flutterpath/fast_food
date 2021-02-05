import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/appbar_widget.dart';
import 'package:food_app/custom_widgets/button_widget.dart';
import 'package:food_app/custom_widgets/my_text_field.dart';
import 'package:food_app/custom_widgets/mytext.dart';
import 'package:food_app/utils/colors_const.dart';
import 'package:food_app/utils/strings.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: MyAppBar(title: Strings.addNewPassword,),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.10),
            Center(
              child: Container(
                  height: height * 0.5,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColors.white,
                    boxShadow: [
                      //background color of box
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.05),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Align(alignment: Alignment.topLeft,
                            child: MyText12(
                              text: Strings.newPassword,
                              color: MyColors.textDark425060,
                            ),
                          ),
                        ),

                        myTextField(
                            controller: confirmController,
                            showTrailing: true,
                            hintText: "********",
                            textInputType: TextInputType.name,
                            validator: (val){
                              if(val.isEmpty || val == null){
                                return "Please Enter Email!";
                              }
                              else if(val.length < 5){
                                return "Enter valid email!";
                              }
                              else{
                                return null;
                              }
                            }
                        ),
                        SizedBox(height: height*0.05),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Align(alignment: Alignment.topLeft,
                            child: MyText12(
                              text: Strings.confirmNewPassword,
                              color: MyColors.textDark425060,
                            ),
                          ),
                        ),

                        myTextField(
                            controller: passwordController,
                            showTrailing: true,
                            hintText: "********",
                            textInputType: TextInputType.name,
                            validator: (val){
                              if(val.isEmpty || val == null){
                                return "Please Enter Email!";
                              }
                              else if(val.length < 5){
                                return "Enter valid email!";
                              }
                              else{
                                return null;
                              }
                            }
                        ),
                        SizedBox(height: height*0.05),
                        MyButton(
                          text: Strings.addNewPassword,
                          myPress: (){},
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
