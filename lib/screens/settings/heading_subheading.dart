import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      highlightColor: Colors.white,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: HeadingText(text:heading_text),
        ),
        SubHeadingText(text:subheading_text),
      ],
      ),
    );
  }
}
