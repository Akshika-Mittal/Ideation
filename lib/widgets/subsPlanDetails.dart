import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/boxContents.dart';
import 'package:tiffin/widgets/boxImage.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/description_text_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

class subsPlanDetails extends StatelessWidget {
  const subsPlanDetails({
    required this.plan,
    required this.cost,
    required this.planDetails,
    this.pollingRightsText='',
    required this.imagePath,
    required this.validity,
    required this.foodType,
    required this.onPress,
    required this.buttonText,
  });

  final String plan;
  final String cost;
  final String planDetails;
  final String pollingRightsText;
  final String imagePath;
  final String validity;
  final String foodType;
  final String buttonText;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'Choose your Tiff Plan',),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                plan,
                style: kBodyHeading1TextBoldBlack,
              ),
              Text(
                cost,
                style: kB1BodyText,
              ),
              Text(
                foodType,
                style: kB1BodyText,
              ),

            ],
          ),
        ),
      )
    );
  }
}