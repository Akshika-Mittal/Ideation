import 'package:flutter/cupertino.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  //final TextAlign textAlign;
  const HeadingText({
    required this.text,
    this.color=kBlackColor,
    //this.textAlign=TextAlign.left,
    this.size = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      //textAlign: textAlign,
      style: kH1Heading,
    );
  }
}
