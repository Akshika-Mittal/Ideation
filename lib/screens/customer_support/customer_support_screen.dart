import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/customer_support/components/body.dart';

import '../../utils/AppColors.dart';
import '../../widgets/screen_heading.dart';
class CustomerSupport extends StatelessWidget {
  static String routeName = "/customer_support";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Get Help')),
      body: Body(),
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.symmetric(vertical: 14),
      //   decoration: BoxDecoration(
      //     color: kWhiteColor,
      //     boxShadow: [
      //       BoxShadow(offset: Offset(0,-15),
      //          blurRadius: 20,
      //         color: Color(0xFFDADADA).withOpacity(0.15),
      //       ),
      //     ],
      //     borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(40),
      //     topRight: Radius.circular(40),
      //   ),
      // ),
      // ),//bottomNavigationBar:
    );
  }
}
