import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/widgets/subsPlanDetails.dart';

class ProGold extends StatelessWidget {
  static String routeName="/progold";
  @override
  Widget build(BuildContext context)
  {
    return subsPlanDetails(
      plan: 'Pro Gold',
      cost: '₹ 7499',
      foodType: 'Healthy Vegetarian - Non Vegetarian',
      planDetails: '* Pro Gold plan will include 6 items in the box.\n'
          '* You can opt for the Vegetarian or Non Vegetarian box.\n'
          '* This plan will include 60 orders.\n'
          '* You can choose between lunch and dinner.\n'
          '* Pro Gold plan will include polling rights.\n',
      pollingRightsText: '**This plan doesnot include the polling rights.',
      buttonText: 'Procced to Pay',
      onPress: (){},
      imagePath:  'assets/images/Bg Image.png',
      validity: 'Validity: 60 days',
    );
  }
}