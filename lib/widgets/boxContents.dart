import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

class boxContent extends StatelessWidget {
  const boxContent({
    required this.text,
    required this.imagePath
  });

  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width12, vertical: Dimensions.height12),
      child: Container(
        height: Dimensions.height60,
        width: Dimensions.height60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(
            Dimensions.height10),
          color: kWhiteColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(imagePath),
              height: Dimensions.height40,),
            SubHeadingText(
              text: text,
              color: kBlackColor,
              size: Dimensions.font10,
            ),
          ],
        ),
      ),
    );
  }
}