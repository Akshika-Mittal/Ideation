import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/anything_else.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/final_delete.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';

import '../../../../../widgets/AppBarWidget.dart';
import '../../../../../widgets/gradientBorderDDefaultButton.dart';

class AppIssue extends StatelessWidget {
  static String routeName = "/app_issue";
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Delete Account')),
      body: Container(
        color: kLightGrey,
        child: Padding(
          padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/44.86), //left=right=20 top=10
          child: Column(
            children: <Widget>[
              //DividerWidget(),
              AutoSizeText("Feel free to report any issues that you\'re facing with Tiff app. We\'ll do our best to fix them",style: kB1BodyText,),
              SizedBox(height: Dimensions.height10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Linkify(
                  onOpen: (link) => print("Clicked ${link.url}!"),
                  text: "Report",
                  style: TextStyle(
                    color: kMainThemeColor,
                    fontFamily: 'OpenSans',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  linkStyle: TextStyle(color: kMainThemeColor),
                ),
              ),
              DividerWidget(),
              Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText("Would you rather delete your account?",style: kBodyHeading1Text,),
              ),
              SizedBox(height: screenHeight/89.72,), //hgeight10
              Align(
                alignment: Alignment.centerLeft,
                child: AutoSizeText("Click on next to continue with deletion",style: kB1BodyText,),
              ),
              Spacer(),
              DefaultButton(
                text: "Next",
                press: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AnythingElse()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
