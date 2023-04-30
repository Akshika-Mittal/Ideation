import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/description_text_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        color: kLightGrey,
        child: Padding(
          padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72), //left=right=20 top=10
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              AutoSizeText(
                'Tiff Foods Pvt.Ltd.',
                style: kBodyHeading1TextBoldBlack,
              ),
              AutoSizeText(
                'Tiffin Service Curated by You',
                style: kB1BodyText,
              ),
              SizedBox(
                height: screenHeight/44.86, //height20
              ),
              AutoSizeText(
               'TIFF is a premium Tiffin Subscription Delivery Service. Providing highest quality of homemade food'
                ',which is not just lip-smacking delicious but healthy too! Our delectable menu'
                 'is curated by our customers. The newly introduced polling syste, let\'s our customer choose the next day\'s menu.\n\n'
                'All our food items are prepared by professional chefs to provide hearty and appetizing homemade food consisting of a '
                'variety of delicacies from different parts of the country.\n\n'
                'For our health concious lot, we have a team of professional dietitians working closely with our chefs. Our Saturday'
                'and Sunday special will be a surprise menu for our customers to fulfill their culinary'
                'indulgence with luscious delicacies at their coonvenience.\n\n'
                'TIFF facilitates delivery of premium meals and homemade delicacies whether it\'s your home or office.\n\n'
                'Plan your means a day before and get them delivered to your home or office by subscribing to our mean plans.',
                style: kBodyHeading1Text,
              ),
              SizedBox(
                height: screenHeight/89.72, //height10
              ),
            ],
          ),
        ),
      ),
    );

  }
}