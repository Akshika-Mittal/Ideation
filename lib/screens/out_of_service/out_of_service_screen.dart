

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/navigation_drawer.dart';
import '../../utils/dimensions.dart';
import '../../widgets/screen_heading.dart';
import 'package:tiffin/screens/out_of_service/components/body.dart';

class OutOfServiceScreen extends StatelessWidget {
  static String routeName = "/out_of_service";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //drawer: NavigationDrawerWidget(),
      // appBar: PreferredSize(
      //     preferredSize:  Size.fromHeight(Dimensions.appBarPrefferedHeight),
      //     child: Screen_Heading(text: '',)),
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.profile),
      //bottomNavigationBar:
    );
  }
}