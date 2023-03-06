import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/widgets/subsPlanDetails.dart';

class Gold extends StatelessWidget {
  static String routeName="/gold";
  @override
  Widget build(BuildContext context)
  {
    return subsPlanDetails(
      plan: 'Gold',
      cost: '₹ 7499',
      foodType: 'Vegetarian - Non Vegetarian',
      planDetails: '* Goldr plan will include 8 items in the box.\n'
          '* You can opt for the Vegetarian or Non Vegetarian box.\n'
          '* This plan will include 30 orders.\n'
          '* You can choose between lunch and dinner.\n'
          '* Gold plan will include polling rights.\n',
     // pollingRightsText: '**This plan doesnot include the polling rights.',
      buttonText: 'Proceed to Payment',
      onPress: (){},
      imagePath:  'assets/images/Bg Image.png',
      validity: 'Validity: 30 days',
    );
  }
}