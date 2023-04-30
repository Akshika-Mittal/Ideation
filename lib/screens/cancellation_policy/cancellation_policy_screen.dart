import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/cancellation_policy/components/body.dart';

import '../../widgets/AppBarWidget.dart';

class CancelationPolicy extends StatelessWidget {
  static String routeName = "/cancelation_policy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kLightGrey,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Cancellation/Refund Policy')),
      body: Body(),
    );
  }
}
