import 'package:flutter/material.dart';
import 'package:tiffin/screens/feedback/feedback_screen.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/home/components/body.dart';
class HomeScreen extends StatefulWidget {
  // HomeScreen({required this.statuscode});
  // final int statuscode;
  static String routeName = "/home";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  //int status=statuscode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
          preferredSize:Size.fromHeight(Dimensions.height50),
          child: AppBarWidget(),
      ),
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.home),
      //bottomNavigationBar:
    );
  }
}
