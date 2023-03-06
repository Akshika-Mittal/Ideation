import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/screen_heading.dart';

class ChangeEmail extends StatelessWidget {
  static String routeName = "/change_email";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: Screen_Heading(text: 'Change Email',),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.height12,horizontal: Dimensions.width12),
        child: Column(
          children: <Widget>[
            DividerWidget(),
            SelectableText.rich(
              TextSpan(
                children: [
                  TextSpan(
                    style: TextStyle(
                      fontSize: Dimensions.font14,
                    ),
                    text: 'To change your email, please change from your account setting.In case you face any difficulties '
                  'feel free to contact us at  ',
                  ),
                  TextSpan(
                    style: TextStyle(
                      fontSize: Dimensions.font14,
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
    );
  }
}