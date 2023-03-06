import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/cancellation_policy/components/body.dart';

class CancelationPolicy extends StatelessWidget {
  static String routeName = "/cancelation_policy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize:Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'Cancellation/Refund Policy',),
      ),
      body: Body(),
    );
  }
}
