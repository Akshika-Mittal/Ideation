import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/change_email.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/delete_account.dart';
import 'package:tiffin/utils/size_config.dart';
class AccountSettingScreen extends StatelessWidget {
  static String routeName ="/AccountSetting";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'Account Settings',),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.height8,horizontal: Dimensions.width8),
        child: Column(
          children: <Widget>[
            DividerWidget(),
            ChoiceMaker(text: 'Change Email',onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ChangeEmail()));},),
            DividerWidget(),
            ChoiceMaker(text: 'Delete Account',onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>DeleteAccount()));},),
            DividerWidget(),
          ],
        ),
      ),
    );
  }
}
class ChoiceMaker extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const ChoiceMaker({
    required this.text,
    required this.onTap
});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        HeadingText(text: text),
        GestureDetector(
          onTap: onTap,
          child: iconWidget(),
        ),
      ],
    );
  }
}
class iconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
        Icons.keyboard_arrow_right_rounded,
      color: kMainThemeColor,
      size: Dimensions.height40,
    );
  }
}