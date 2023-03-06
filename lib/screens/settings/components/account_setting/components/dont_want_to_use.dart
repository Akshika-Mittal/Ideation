import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/final_delete.dart';

class DontWantTo extends StatelessWidget {
  static String routeName = "/dont_want_to";
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
            SizedBox(height: Dimensions.height20,),
            HeadingText(text: 'Anything else you would like to add?'),
            SubHeadingText(text:"Do you have feedback for us? We would love to hear from you!"),
            SizedBox(height: Dimensions.height10,),
            DividerWidget(),
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
