import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/feedback/components/body.dart';
class FeedbackScreen extends StatelessWidget {
  static String routeName = "/feedback";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'Feedback',),
      ),
      body: Body(),
    );
  }
}
