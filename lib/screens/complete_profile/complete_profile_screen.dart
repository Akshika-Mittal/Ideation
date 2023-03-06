import 'package:flutter/material.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName ="/complete_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBarWidget(),
    ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.profile),
    );
  }
}
