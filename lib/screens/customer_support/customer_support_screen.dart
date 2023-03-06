import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/customer_support/components/body.dart';
class CustomerSupport extends StatelessWidget {
  static String routeName = "/customer_support";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
        preferredSize:Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: AppBarWidget(),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
      //bottomNavigationBar:
    );
  }
}
