import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/feedback/components/body.dart';

import '../../widgets/AppBarWidget.dart';
class FeedbackScreen extends StatelessWidget {
  static String routeName = "/feedback";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Feedback')),
      body: Body(),
    );
  }
}
