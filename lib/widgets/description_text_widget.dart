import 'package:flutter/cupertino.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';

class DescriptionText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const DescriptionText({
    required this.text,
    this.color=kWhiteColor,
    this.size = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size==0?Dimensions.font17:size,
        fontWeight:FontWeight.normal,
        color: color,
      ),
    );
  }
}