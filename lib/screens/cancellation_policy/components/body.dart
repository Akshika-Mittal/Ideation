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
              color: Color.fromRGBO(235, 71, 73, 1.0),
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
                Center(
                  child: SubHeadingText(
                    text: 'Cancellation/Refund Policy',
                    color: kWhiteColor,
                    ),
                  ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width15,vertical: Dimensions.height15),
                  child: DescriptionText(
                    text: '1. All requests to reschedule your meals will be accepted only if they are made within our cut-off period through the app. All reschedule requests for lunch orders have to be placed by 12:00 AM (on the previous day) and for dinner by 12:00 AM.\n'
                        '2. We do  allow conversion of plans from veg to non-veg or vice-versa.\n'
                        '3. In the unlikely event that your order is delivered late (after 2:00 PM for lunch and 9:30 PM for dinner), or the food that has been delivered is flagged for quality issues by a majority of TIFF customers, you will be compensated with a complimentary meal from TIFF, no refunds!\n'
                        '4. If you cannot avail meals from your existing subscription due to reasons such as relocation, long vacation, health issues etc., you can change the delivery address and get the remaining meals from your subscription delivered to your new address (given we are serviceable at your new location). Unfortunately, we will not be able to refund the money.\n'
                        '5. All meal plan subscriptions have to be used within the validity period. We are not accountable for the lapse of your subscription. We also do not issue refunds or extend the validity of meal plans that are already active.\n'
                        '6. If you are unsatisfied with the food or unhappy with our services, we will provide you with refund on a pro rata basis i.e., you will be refunded based on the number of meals you have consumed from your subscription given you have already started your subscription.\n',
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