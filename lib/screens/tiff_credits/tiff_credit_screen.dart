import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/tiff_credits/components/body.dart';

import '../../components/custom_bottom_nav_bar.dart';
import '../../enums.dart';
import '../../widgets/AppBarWidget.dart';
class TiffCreditsScreen extends StatelessWidget {
  static String routeName = "/tiff_credits";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Tiff Credits')),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
    );
  }
}
