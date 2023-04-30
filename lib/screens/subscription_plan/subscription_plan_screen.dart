import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import '../../widgets/AppBarWidget.dart';
import '../subscription_plan/components/body.dart';
class SubscriptionPlanScreen extends StatelessWidget {
  static String routeName ="/subscription_plan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Tiff Subscription Plans')),
      body: Body(),
    );
  }
}
