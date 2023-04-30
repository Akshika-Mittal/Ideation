import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/screen_heading.dart';

import '../../../../../widgets/AppBarWidget.dart';

class ChangeEmail extends StatelessWidget {
  static String routeName = "/change_email";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Change Email')),
      body: SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/44.86), //left=right=20 top=10
            child: Column(
              children: <Widget>[
                //DividerWidget(),
                SelectableText.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        style: kBodyHeading1Text,
                        text: 'To change your email, please change from your account setting.In case you face any difficulties '
                      'feel free to contact us at  ',
                      ),
                      TextSpan(
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          color: kMainThemeColor,
                      ),
                        text: 'help@tifffoods.com',
                        recognizer: TapGestureRecognizer()..onTap = () async {
                          final url = 'https://github.com/flutter/gallery/';
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}