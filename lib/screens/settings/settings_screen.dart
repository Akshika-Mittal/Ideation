import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/settings/components/body.dart';
class SettingsScreen extends StatelessWidget {
  static String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'Settings',),
      ),
      body: Body(),
    );
  }
}
