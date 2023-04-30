import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';


class Heading_Subheading extends StatelessWidget {
  final String heading_text;
  final String subheading_text;
  final Function()? onTap;
  const Heading_Subheading({
    required this.heading_text,
    required this.subheading_text,
    required this.onTap,
});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      highlightColor: kWhiteColor,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: AutoSizeText(heading_text,style: kBodyHeading1Text,),
        ),
        AutoSizeText(subheading_text,style: kB1BodyText,),
      ],
      ),
    );
  }
}
