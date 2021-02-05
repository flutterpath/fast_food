import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/button_widget.dart';
import 'package:food_app/custom_widgets/my_container.dart';
import 'package:food_app/custom_widgets/my_text_field.dart';
import 'package:food_app/custom_widgets/mytext.dart';
import 'package:food_app/utils/colors_const.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VarificationScreen extends StatefulWidget {
  @override
  _VarificationScreenState createState() => _VarificationScreenState();
}

class _VarificationScreenState extends State<VarificationScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.backGroundWhite,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myContainerWithIcon(
                context: context,
                // height: height*0.5,
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(flex: 1),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: MyText12(
                          text: "Enter the varification code ",
                          color: MyColors.textDark252C34,
                        ),
                      ),

                      PinCodeTextField(
                        appContext: context,
                        pastedTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        length: 4,
                        obscureText: true,
                        obscuringCharacter: '*',
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v.length < 3) {
                            return "I'm from validator";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(10),
                            fieldHeight: 50,
                            fieldWidth: 50,
                            activeColor: MyColors.lightGrey,
                            inactiveColor: MyColors.lightGrey,
                            inactiveFillColor: Colors.white10,
                            selectedColor:  MyColors.lightGrey,
                            selectedFillColor: Colors.white10,
                            activeFillColor: Colors.white10,
                            disabledColor: Colors.black
                            //inactiveColor: Colors.white70
                            ),

                        animationDuration: Duration(milliseconds: 300),
                        backgroundColor: Colors.white10,
                        cursorColor: Colors.black45,
                        enableActiveFill: true,
                        //errorAnimationController: errorController,
                        //    controller: textEditingController,
                        keyboardType: TextInputType.number,
                        onCompleted: (v) {
                          print("Completed");
                        },
                        // onTap: () {
                        //   print("Pressed");
                        // },
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            //  currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      ),
                      Spacer(flex: 2),
                      MyButton(
                        text: "Verify Now",
                        myPress: () {},
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
