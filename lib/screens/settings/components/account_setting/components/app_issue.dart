import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/final_delete.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';

class AppIssue extends StatelessWidget {
  static String routeName = "/app_issue";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'Delete Account',),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.height12,horizontal: Dimensions.width12),
        child: Column(
          children: <Widget>[
            DividerWidget(),
            SubHeadingText(text: "Feel free to report any issues that you\'re facing with Tiff app. We\'ll do our best to fix them"),
            SizedBox(height: Dimensions.height10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Linkify(
                onOpen: (link) => print("Clicked ${link.url}!"),
                text: "Report",
                style: TextStyle(
                  color: kMainThemeColor,
                  fontSize: Dimensions.height15,
                ),
                linkStyle: TextStyle(color: kMainThemeColor),
              ),
            ),
            DividerWidget(),
            Align(
                alignment: Alignment.centerLeft,
                child: HeadingText(text: "Would you rather delete your account?",),
            ),
            SizedBox(height: Dimensions.height10,),
            Align(
              alignment: Alignment.centerLeft,
              child: SubHeadingText(text: "Click on next to continue with deletion",),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimensions.height30,horizontal: Dimensions.width30),
              child: DefaultButton(
                text: "Next",
                press: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>FInalDelete()));
                },
              ),
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
          ],
        ),
      ),
    );
  }
}
