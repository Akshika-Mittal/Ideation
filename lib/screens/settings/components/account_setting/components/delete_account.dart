import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/anything_else.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/app_issue.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/dont_want_to_use.dart';
import 'package:tiffin/screens/settings/components/account_setting/sccount_setting_screen.dart';

import '../../../../../widgets/AppBarWidget.dart';

class DeleteAccount extends StatelessWidget {
  static String routeName ="/delete_account";
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
              ChoiceMaker(
                  text: "I don\'t want to use Tiff service anymore",
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>DontWantTo()));},
              ),
              DividerWidget(),
              ChoiceMaker(
                  text: "The app is not working properly",
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AppIssue()));},
              ),
              DividerWidget(),
              ChoiceMaker(
                  text:"Service issue",
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AppIssue()));},
              ),
              DividerWidget(),
              ChoiceMaker(
                  text:"Food Quality",
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AppIssue()));},
              ),
              DividerWidget(),
              ChoiceMaker(
                  text:"Sending too many emails/notifications",
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AppIssue()));},
              ),
              DividerWidget(),
              ChoiceMaker(
                  text:"Others",
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AnythingElse()));},
              ),
              DividerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}