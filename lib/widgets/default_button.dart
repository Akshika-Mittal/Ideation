import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/heading_text.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({required this.text,required this.press,this.bgColor=kBlackColor,this.textColor=kBlackColor});
  final String text;
  final Function()? press;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.width20,
      ),
      child: SizedBox(
        height: Dimensions.blockSizeH * 15.5,
        width: Dimensions.blockSizeH * 100,
        child: OutlinedButton(
          onPressed: press,
          child: HeadingText(
            text: text,
            color: textColor,
            size: Dimensions.font20,
          ),
          style: OutlinedButton.styleFrom(
            //onSurface: kBlackColor,
            side: BorderSide(color:kBlackColor,width: 1),
            ),
            //backgroundColor: bgColor,
          ),
        ),
    );
  }
}