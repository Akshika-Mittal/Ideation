import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';

import '../single_order/components/body.dart';

class SingleOrderScreen extends StatefulWidget {
  // HomeScreen({required this.statuscode});
  // final int statuscode;
  static String routeName = "/single_order";
  @override
  State<SingleOrderScreen> createState() => _SingleOrderScreenState();
}
class _SingleOrderScreenState extends State<SingleOrderScreen> {
  //int status=statuscode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
        preferredSize:Size.fromHeight(Dimensions.height50),
        child: AppBarWidget(),
      ),
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.home),
      //bottomNavigationBar:
    );
  }
}