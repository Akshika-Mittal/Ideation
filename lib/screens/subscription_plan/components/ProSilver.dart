import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/widgets/subsPlanDetails.dart';

class ProSilver extends StatelessWidget {
  static String routeName="/prosilver";
  @override
  Widget build(BuildContext context)
  {
    return subsPlanDetails(
      plan: 'Pro Silver',
      cost: '₹ 399',
      foodType: 'Healthy Vegetarian - Non Vegetarian',
      planDetails: '* Pro Silver plan will include 8 items in the box.\n'
          '* Today\'s selected item will be delivered to you.\n'
          '* You can opt for the Vegetarian or Non Vegetarian box.\n'
          '* This plan will include 1 order for Rs. 399.\n'
          '* You can choose between lunch and dinner.\n'
          '* Polling will be diabled for single order window.\n',
      pollingRightsText: '**This plan doesnot include the polling rights.',
      buttonText: 'Proceed to Payment',
      onPress: () {},
      imagePath:  'assets/images/Bg Image.png',
      validity: 'Validity: Single Order',
    );
  }
}