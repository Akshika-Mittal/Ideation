import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';
import 'package:tiffin/utils/size_config.dart';

import '../../../../widgets/AppBarWidget.dart';
import '../../../../widgets/gradientBorderDDefaultButton.dart';
class NotificationPreferenceScreen extends StatefulWidget {
  static String routeName = "/notification_preference";
  @override
  State<NotificationPreferenceScreen> createState() => _NotificationPreferenceScreenState();
}
class _NotificationPreferenceScreenState extends State<NotificationPreferenceScreen> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    //SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Notification Preferences')),
      body: SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/44.86), //left=right=20 top=10
            child: Column(
              children: <Widget>[
                buildCheckboxListTile('Promos and Offers','Receive coupons, promotions and money saving offers'),
                DividerWidget(),
                buildCheckboxListTile("Orders and Purchases","Receive updates related to your order status,membership and more"),
                DividerWidget(),
                Spacer(),
                DefaultButton(
                  text:'Save Changes',
                  press: (){Navigator.pushNamed(context, SettingsScreen.routeName);},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  CheckboxListTile buildCheckboxListTile(String title,String subtitle) {
    return CheckboxListTile(
      checkboxShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)),
            //checkColor:kBlackColor,
      activeColor: Colors.redAccent,
            selectedTileColor:kWhiteColor,
            title: AutoSizeText(title,style: kBodyHeading1Text,),
            subtitle:AutoSizeText(subtitle,style: kB1BodyText,),
            value: this.valuefirst,
            onChanged:(bool? value) {
              setState(() {
                this.valuefirst = value!;
              });
            },
      );
    }
}
