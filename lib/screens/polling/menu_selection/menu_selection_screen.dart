import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/polling/menu_selection/components/body.dart';

import '../../../widgets/screen_heading.dart';

class MenuSelection extends StatelessWidget {
  static String routeName = "/menu_selection";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Choose your appetite')),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.none,),
      //bottomNavigationBar:
    );
  }
}
