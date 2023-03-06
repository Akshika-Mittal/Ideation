import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import '../subscription_plan/components/body.dart';
class SubscriptionPlanScreen extends StatelessWidget {
  static String routeName ="/subscription_plan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:  Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: Screen_Heading(text: 'Tiff Subscription Plan',)),
      body: Body(),
    );
  }
}
