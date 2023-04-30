import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/AppColors.dart';
import '../utils/constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.hintText,
    required this.inputType,
    required this.controller,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final String hintText;
  final TextInputType inputType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight/16.313, //height55
      decoration: BoxDecoration(
        //border: Border.all(width: 1, color: Colors.white),
        borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
        color: kWhiteColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: screenWidth/28.23),
        child: TextField(
          onChanged: (value) {
            // phone=value;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left:screenWidth/42.35,top: screenHeight/44.86,bottom: screenHeight/44.86), //left10 //height20
            enabledBorder:InputBorder.none,
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: kB1BodyText,

          ),
          keyboardType: inputType,// set the keyboard type to number
          controller: controller,
          cursorColor: kDividerColor,
          style: kB1BodyText,
          obscureText: hintText=='Password'?true:false,
        ),
      ),
    );
  }
}