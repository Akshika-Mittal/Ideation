import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: kDividerColor,
      thickness: 2,
    );
  }
}
