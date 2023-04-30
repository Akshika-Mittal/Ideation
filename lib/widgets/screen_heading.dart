import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
class Screen_Heading extends StatelessWidget {
  final String text;
  const Screen_Heading({required this.text});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
          text,
        style: kH3Heading,
    );
  }
}

