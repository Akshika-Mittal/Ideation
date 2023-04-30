import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/offers/components/body.dart';
import '../../utils/dimensions.dart';
import '../../widgets/AppBarWidget.dart';
import '../../widgets/screen_heading.dart';
class OffersScreen extends StatelessWidget {
  static String routeName = "/offers";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //drawer: NavigationDrawerWidget(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Offers')),
      body: Body(),
    );
  }
}