import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/button_widget.dart';
import 'package:food_app/custom_widgets/my_container.dart';
import 'package:food_app/custom_widgets/my_text_field.dart';
import 'package:food_app/custom_widgets/mytext.dart';
import 'package:food_app/utils/colors_const.dart';

class SignUpFirst extends StatefulWidget {
  @override
  _SignUpFirstState createState() => _SignUpFirstState();
}

class _SignUpFirstState extends State<SignUpFirst> {
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
                          text: "Name",
                          color: MyColors.textDark425060,
                        ),
                      ),

                      myTextField(
                        controller: nameController,
                        hintText: "Name",
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
                          text: "Email",
                          color: MyColors.textDark425060,
                        ),
                      ),

                      myTextField(
                          controller: emailController,
                          hintText: "Email",
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
