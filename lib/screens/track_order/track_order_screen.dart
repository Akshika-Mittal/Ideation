

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/navigation_drawer.dart';
import '../../utils/dimensions.dart';
import '../../widgets/AppBarWidget.dart';
import '../../widgets/screen_heading.dart';
import 'package:tiffin/screens/track_order/components/body.dart';

class TrackOrderScreen extends StatelessWidget {
  static String routeName = "/track_order";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //drawer: NavigationDrawerWidget(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Track Order')),
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.profile),
      //bottomNavigationBar:
    );
  }
}