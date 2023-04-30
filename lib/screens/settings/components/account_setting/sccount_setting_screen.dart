import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/change_email.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/delete_account.dart';
import 'package:tiffin/utils/size_config.dart';

import '../../../../utils/constants.dart';
import '../../../../widgets/AppBarWidget.dart';
class AccountSettingScreen extends StatelessWidget {
  static String routeName ="/AccountSetting";
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    //SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Account Settings')),
      body: SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/44.86), //left=right=20 top=10
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: screenHeight/179.451, //height5
                ),
                ChoiceMaker(text: 'Change Email',onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ChangeEmail()));},),
                DividerWidget(),
                ChoiceMaker(text: 'Delete Account',onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>DeleteAccount()));},),
                DividerWidget(),
              ],
            ),
          ),
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
        AutoSizeText(text,style: kBodyHeading1Text,),
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
      color: kTextColor,
      size: 34,
    );
  }
}