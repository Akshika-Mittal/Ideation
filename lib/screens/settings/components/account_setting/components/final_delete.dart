import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';

class FInalDelete extends StatelessWidget {
  static String routeName = "/final_delete";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'Delete Account',),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.height15,horizontal: Dimensions.width15),
        child: Column(
          children: <Widget>[
            DividerWidget(),
            Align(
              alignment: Alignment.centerLeft,
              child: HeadingText(text: "You\'re about to delete your account"),
              ),
            SizedBox(
              height: 20,
            ),
            SubHeadingText(text: "All the data associated with it (including your profile photos, subscription) will be permanently deleted in 30 days. This information can\'t be recovered oce the account is deleted "),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width10,vertical: Dimensions.height30),
              child: DefaultButton(
                text: "Delete my account now",
                press: () {
                  Navigator.pushNamed(context, SettingsScreen.routeName);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width10,vertical: 0),
              child: TextButton(
                onPressed: () { Navigator.pushNamed(context, SettingsScreen.routeName); },
                child:
                  Text('Back to Settings',
                  style: TextStyle(
                    color: kMainThemeColor,
                  ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
