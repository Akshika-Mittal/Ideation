import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/screens/settings/components/account_setting/sccount_setting_screen.dart';
import 'package:tiffin/screens/settings/components/notification_preferences/notification_preferences_screen.dart';
import 'package:tiffin/screens/settings/heading_subheading.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        color: kLightGrey,
        child: Padding(
          padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/44.86), //left=right=20 top=10
          child: Column(
            children: <Widget>[
              Heading_Subheading(
                  heading_text: 'Edit Profile',
                  subheading_text: 'Change your name,delivery location and time',
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>NotificationPreferenceScreen()));
                },
              ),
              DividerWidget(),
              Heading_Subheading(
                  heading_text:'Notification Preferences',
                  subheading_text:'Define what alerts and notifications you want to see',
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>NotificationPreferenceScreen()));
                  },
                ),
              DividerWidget(),
                Heading_Subheading(
                  heading_text:'Account Settings',
                  subheading_text: 'Change your email or delete your account ',
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AccountSettingScreen()));
                  },
                ),
              DividerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}