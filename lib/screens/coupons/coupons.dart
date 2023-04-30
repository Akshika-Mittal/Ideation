import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/about_us/components/body.dart';

import '../../widgets/AppBarWidget.dart';
class Coupons extends StatelessWidget {
  static String routeName = "/coupons";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Coupons')),
      // appBar:PreferredSize(
      //   preferredSize:Size.fromHeight(Dimensions.appBarPrefferedHeight),
      //   child: Screen_Heading(text: 'About Us',),
      // ),
      body: Body(),
    );
  }
}
