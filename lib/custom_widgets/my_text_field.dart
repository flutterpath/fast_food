import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/utils/colors_const.dart';

Widget myTextField({bool showTrailing = false, TextEditingController controller, TextInputType textInputType, List<TextInputFormatter> inputFormatter, String hintText, String Function(String) validator}){
  return ConstrainedBox(
    constraints: BoxConstraints(
      minHeight: 50,
      minWidth: double.infinity
    ),
    child: TextFormField(
      controller: controller,
      keyboardType: textInputType,
      inputFormatters: inputFormatter,
      validator: validator,
      decoration: new InputDecoration(
        // labelText: "Amount",
        fillColor: Colors.white,
        hintText: hintText,
        suffixIcon: showTrailing ? Icon(Icons.remove_red_eye) : null,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(5.0),
          borderSide: new BorderSide(color: MyColors.textFieldGreyEDF0F2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: new BorderRadius.circular(5.0),
          borderSide: new BorderSide(color: MyColors.lightGrey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: new BorderRadius.circular(5.0),
          borderSide: new BorderSide(color: MyColors.textFieldGreyEDF0F2),
        ),
        //fillColor: Colors.green
      ),

    ),
  );
}