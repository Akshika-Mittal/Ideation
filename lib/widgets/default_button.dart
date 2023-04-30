import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/heading_text.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({required this.text,required this.press});
  final String text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialButton(
        onPressed: press,
        padding: EdgeInsets.only(right: 0.0),
        child: Ink(
          decoration: BoxDecoration(
            gradient: kPrimaryGradientColor,
            borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)),
          ),
          child: Container(
              constraints: BoxConstraints(
                minWidth: screenWidth/7.058, //width60
                minHeight: screenHeight/14.954, //height60
              ), // min sizes for Material buttons
              alignment: Alignment.center,
              child: AutoSizeText(
                text,
                minFontSize: 12,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize:16,
                  fontWeight: FontWeight.w700,
                  color: kWhiteColor,
                  height: 1,
                ),
              )),
        ),
    );
  }
}