import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/polling/polling_result/components/body.dart';

import '../../../widgets/AppBarWidget.dart';
class PollingResultsScreen extends StatelessWidget {
  static String routeName = "/polling_result";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Polled Items')),
      body: Body(),
    );
  }
}
