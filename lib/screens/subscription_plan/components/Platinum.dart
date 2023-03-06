import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/subscription_plan/components/goal.dart';
import 'package:tiffin/widgets/subsPlanDetails.dart';

class Platinum extends StatelessWidget {
  static String routeName="/platinum";
  @override
  Widget build(BuildContext context)
  {
    return subsPlanDetails(
      plan: 'Platinum',
      cost: '₹ 8999',
      foodType: 'Healthy Vegetarian - Non Vegetarian',
      planDetails: '* Platinum plan will include 6 items in the box.\n'
          '* You can opt for the Vegetarian or Non Vegetarian box.\n'
          '* This plan will include the food according to your diet plan.\n'
          '* This plan will include 30 orders.\n'
          '* You can choose between lunch and dinner.\n'
          '* Platinum plan will include polling rights.\n',
      pollingRightsText: '**This plan doesnot include the polling rights.',
      buttonText: 'Proceed to Goal',
      onPress: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Goal(),));},
      imagePath:  'assets/images/Bg Image.png',
      validity: 'Validity: 30 days',
    );
  }
}