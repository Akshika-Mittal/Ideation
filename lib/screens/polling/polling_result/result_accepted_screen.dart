import 'package:flutter/material.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/utils/size_config.dart';

import '../../polling/polling_result/components/body.dart';

class ResultAcceptedScreen extends StatelessWidget {
  static String routeName = "/result_accepted";
  //Widget build(BuildContext context) {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBarWidget(),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
      //bottomNavigationBar:
    );
  }
}
