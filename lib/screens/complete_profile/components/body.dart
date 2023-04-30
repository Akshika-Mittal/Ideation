import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/screens/complete_profile/components/complete_profille_form.dart';
import 'package:tiffin/utils/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: buildCoverImage(),
    );
  }

  Widget buildCoverImage()=> Container(
    decoration: BoxDecoration(
      gradient: kPrimaryGradientColor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(4),
        bottomRight: Radius.circular(4),
       ),
      ),
      width: double.infinity,
    height: 200,
  );
}
