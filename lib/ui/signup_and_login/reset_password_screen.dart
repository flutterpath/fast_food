import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/appbar_widget.dart';
import 'package:food_app/custom_widgets/button_widget.dart';
import 'package:food_app/custom_widgets/my_text_field.dart';
import 'package:food_app/custom_widgets/mytext.dart';
import 'package:food_app/utils/colors_const.dart';
import 'package:food_app/utils/strings.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: MyAppBar(title: Strings.forgotPassword,),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(left: 10,top: 30),
            //   child: Align(
            //       alignment: Alignment.topLeft,
            //       child: Row(
            //         children: [
            //           Icon(
            //             Icons.arrow_back_ios,
            //             color: MyColors.textDark252C34,
            //             size: 30,
            //           ),
            //           SizedBox(width: width*0.05),
            //           Text("Forget Password")
            //         ],
            //       )
            //   ),
            // ),
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
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.05),
                      Text(Strings.pleaseEnterYourPhone_),
                      SizedBox(height: height * 0.05),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, left: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: MyText12(
                            text: Strings.number,
                            color: MyColors.textDark425060,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: myTextField(
                            controller: numberController,
                            hintText: "0177 986 38 98",
                            textInputType: TextInputType.name,
                            validator: (val) {
                              if (val.isEmpty || val == null) {
                                return "Please Enter Mobile Number!";
                              } else if (val.length < 2) {
                                return "Name length should be > 2!";
                              } else {
                                return null;
                              }
                            }),
                      ),
                      SizedBox(height: height * 0.05),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: MyButton(
                          text: Strings.sendMeLink,
                          myPress: () {},
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
