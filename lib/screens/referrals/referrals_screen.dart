import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/referrals/components/body.dart';

import '../../utils/AppColors.dart';
import '../../widgets/screen_heading.dart';

class ReferralsScreen extends StatelessWidget {
  static String routeName = "/referrals";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //drawer: NavigationDrawerWidget(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Refferals')),
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.profile),
      //bottomNavigationBar:
    );
  }
}
