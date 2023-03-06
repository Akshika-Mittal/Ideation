import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/widgets/subsPlanDetails.dart';

class Silver extends StatelessWidget {
  static String routeName="/silver";
  @override
  Widget build(BuildContext context)
  {
    return subsPlanDetails(
      plan: 'Silver',
      cost: '₹ 299',
      foodType: 'Vegetarian - Non Vegetarian',
      planDetails: '* Silver plan will include 6 items in the box.\n'
                   '* Today\'s selected item will be delivered to you.\n'
                   '* You can opt for the Vegetarian or Non Vegetarian box.\n'
                   '* This plan will include 1 order for Rs. 299.\n'
                   '* You can choose between lunch and dinner.\n'
                   '* Polling will be diabled for single order window.\n',
      pollingRightsText: '**This plan doesnot include the polling rights.',
      buttonText: 'Proceed to Pay',
      onPress: (){},
      imagePath:  'assets/images/Bg Image.png',
      validity: 'Validity: Single Order',
    );
  }
}


