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
          child: SingleChildScrollView(
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
                  height: screenHeight/89.72, //height10
                ),
                // Center(
                //   child: Text(
                //     'Cancellation/Refund Policy',
                //     style: kBodyHeading1TextBoldBlack,
                //     ),
                //   ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                AutoSizeText(
                  '1. All requests to reschedule your meals will be accepted only if they are made within our cut-off period through the app. All reschedule requests for lunch orders have to be placed by 12:00 AM (on the previous day) and for dinner by 12:00 AM.\n\n'
                      '2. We do  allow conversion of plans from veg to non-veg or vice-versa.\n\n'
                      '3. In the unlikely event that your order is delivered late (after 2:00 PM for lunch and 9:30 PM for dinner), or the food that has been delivered is flagged for quality issues by a majority of TIFF customers, you will be compensated with a complimentary meal from TIFF, no refunds!\n\n'
                      '4. If you cannot avail meals from your existing subscription due to reasons such as relocation, long vacation, health issues etc., you can change the delivery address and get the remaining meals from your subscription delivered to your new address (given we are serviceable at your new location). Unfortunately, we will not be able to refund the money.\n\n'
                      '5. All meal plan subscriptions have to be used within the validity period. We are not accountable for the lapse of your subscription. We also do not issue refunds or extend the validity of meal plans that are already active.\n\n'
                      '6. If you are unsatisfied with the food or unhappy with our services, we will provide you with refund on a pro rata basis i.e., you will be refunded based on the number of meals you have consumed from your subscription given you have already started your subscription.\n\n',
                  style: kBodyHeading1Text,
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}