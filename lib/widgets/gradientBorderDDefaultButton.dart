import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/heading_text.dart';

class GradientDefaultButton extends StatelessWidget {
  const GradientDefaultButton({required this.text,required this.press});
  final String text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed:press,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90.0)),
      padding: const EdgeInsets.only(right:0.0),
      child: Ink(
          decoration: BoxDecoration(
              border: const GradientBoxBorder(
                gradient: kPrimaryGradientColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(screenWidth/84.705)
          ),
          child: Container(
            constraints: BoxConstraints(minWidth: screenWidth/7.058, //width60
              minHeight: screenHeight/14.954,), // min sizes for Material buttons
            alignment: Alignment.center,
            child: AutoSizeText(
              text,
              style: kButtonTextGradient,
            ),
          )
      ),
    );
  }
}