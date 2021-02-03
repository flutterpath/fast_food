import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/button_widget.dart';
import 'package:food_app/custom_widgets/my_container.dart';
import 'package:food_app/custom_widgets/my_text_field.dart';
import 'package:food_app/custom_widgets/mytext.dart';
import 'package:food_app/utils/colors_const.dart';

class SignUpSecond extends StatefulWidget {
  @override
  _SignUpSecondState createState() => _SignUpSecondState();
}

class _SignUpSecondState extends State<SignUpSecond> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.backGroundWhite,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.05),
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: MyText12(
                          text: "Number",
                          color: MyColors.textDark425060,
                        ),
                      ),

                      myTextField(
                          controller: numberController,
                          hintText: "Number",
                          textInputType: TextInputType.name,
                          validator: (val){
                            if(val.isEmpty || val == null){
                              return "Please Enter Number!";
                            }
                            else if(val.length < 10){
                              return "Enter valid number!";
                            }
                            else{
                              return null;
                            }
                          }
                      ),

                      Spacer(flex: 1),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: MyText12(
                          text: "Email",
                          color: MyColors.textDark425060,
                        ),
                      ),

                      myTextField(
                          controller: passwordController,
                          hintText: "Password",
                          textInputType: TextInputType.name,
                          validator: (val){
                            if(val.isEmpty || val == null){
                              return "Please Enter Password!";
                            }
                            else if(val.length < 8){
                              return "Password length should be > 8!";
                            }
                            else{
                              return null;
                            }
                          }
                      ),

                      Spacer(flex: 2),

                      MyButton(
                        text: "Next",
                        myPress: (){},
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
