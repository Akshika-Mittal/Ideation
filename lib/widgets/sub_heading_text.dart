import 'package:flutter/cupertino.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';

class SubHeadingText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const SubHeadingText({
    required this.text,
    this.color=kIconColor,
    this.size = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size==0?Dimensions.font12:size,
        fontWeight:FontWeight.normal,
        color: color,

      ),
    );
  }
}
