import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/about_us/components/body.dart';
class AboutUs extends StatelessWidget {
  static String routeName = "/about_us";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize:Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'About Us',),
      ),
      body: Body(),
    );
  }
}
