import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import '../../widgets/AppBarWidget.dart';
import '../order_details/components/body.dart';
class OrderDetailsScreen extends StatelessWidget {
  static String routeName ="/order_details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Cart')),
      body: Body(),
    );
  }
}
