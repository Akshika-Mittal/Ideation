import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/description_text_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: Dimensions.height10,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - kToolbarHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: kMainThemeColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Padding(
                padding: EdgeInsets.only(left: Dimensions.width15, top: Dimensions.height10),
                child: HeadingText(
                  text: 'Tiff Foods Pvt.Ltd.',
                  color: kWhiteColor,
                  size: Dimensions.font26,
                    ),
                ),
                SizedBox(
                  height: Dimensions.height1,
                ),
                SubHeadingText(
                  text: 'Tiffin Service Curated by You',
                  color: kWhiteColor,
                  size: Dimensions.font14,
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: Dimensions.width15,vertical: Dimensions.height15),
                  child: DescriptionText(
                   text: 'TIFF is a premium Tiffin Subscription Delivery Service. Providing highest quality of homemade food'
                    ',which is not just lip-smacking delicious but healthy too! Our delectable menu'
                     'is curated by our customers. The newly introduced polling syste, let\'s our customer choose the next day\'s menu.\n'
                    'All our food items are prepared by professional chefs to provide hearty and appetizing homemade food consisting of a '
                    'variety of delicacies from different parts of the country.\n'
                    'For our health concious lot, we have a team of professional dietitians working closely with our chefs. Our Saturday'
                    'and Sunday special will be a surprise menu for our customers to fulfill their culinary'
                    'indulgence with luscious delicacies at their coonvenience.\n'
                    'TIFF facilitates delivery of premium meals and homemade delicacies whether it\'s your home or office.\n'
                    'Plan your means a day before and get them delivered to your home or office by subscribing to our mean plans.',
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
              ],
            ),
          ),
        ),
      ],
    );

  }
}