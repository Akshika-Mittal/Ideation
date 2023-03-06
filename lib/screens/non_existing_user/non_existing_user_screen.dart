import 'package:flutter/material.dart';
import 'package:tiffin/screens/non_existing_user/components/body.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
class NonExistingUserScreen extends StatelessWidget {
  static String routeName = "/non_existing_user";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: '',),
      ),
      body: Body(),
    );
  }
}
