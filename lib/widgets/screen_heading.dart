import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
class Screen_Heading extends StatelessWidget {
  final String text;
  const Screen_Heading({required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //centerTitle: true,
      title: Text(
          text,
        style: TextStyle(
          color: kIconColor,
        ),
      ),
    );
  }
}

