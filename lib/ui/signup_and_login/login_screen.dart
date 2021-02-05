import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/button_widget.dart';
import 'package:food_app/custom_widgets/my_container.dart';
import 'package:food_app/custom_widgets/my_text_field.dart';
import 'package:food_app/custom_widgets/mytext.dart';
import 'package:food_app/utils/colors_const.dart';
import 'package:food_app/utils/strings.dart';
import 'package:logger/logger.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var logger = Logger(
    printer: PrettyPrinter(methodCount: 0),
  );
  bool _checkboxListTile = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
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
                          text: Strings.email,
                          color: MyColors.textDark425060,
                        ),
                      ),

                      myTextField(
                          controller: emailController,
                          hintText: Strings.shakibGmail,
                          textInputType: TextInputType.name,
                          validator: (val){
                            if(val.isEmpty || val == null){
                              return "Please Enter Name!";
                            }
                            else if(val.length < 2){
                              return "Name length should be > 2!";
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
                          text: Strings.password,
                          color: MyColors.textDark425060,
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
                      CheckboxListTile(
                          contentPadding: EdgeInsets.all(0),
                          controlAffinity: ListTileControlAffinity.leading,
                          dense: true,
                          activeColor: MyColors.yellowMainFFD250,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Strings.rememberMe,
                                style: TextStyle(
                                  color: MyColors.textDark252C34,
                                  fontSize: 12,
                                ),
                              ),
                              // SizedBox(width: width*0.1),
                              Text(Strings.forgotPassword)
                            ],
                          ),
                          value: _checkboxListTile,
                          onChanged: (value) {
                            // setState(() {
                            //   logger.i("DataSecurityScreen");
                            //   _checkboxListTile = !_checkboxListTile;
                            //   nextScreen();
                            // });
                          }
                          ),

                      Spacer(flex: 2),

                      MyButton(
                        text: Strings.next,
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
