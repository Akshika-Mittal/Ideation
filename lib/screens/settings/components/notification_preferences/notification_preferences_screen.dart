import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';
import 'package:tiffin/utils/size_config.dart';
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
    SizeConfig().init(context);
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'Notification Preferences',),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.height8,horizontal: Dimensions.width8),
        child: Column(
          children: <Widget>[
            DividerWidget(),
            buildCheckboxListTile('Promos and Offers','Receive coupons, promotions and money saving offers'),
            DividerWidget(),
            buildCheckboxListTile("Orders and Purchases","Receive updates related to your order status,membership and more"),
            DividerWidget(),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimensions.height30,horizontal: Dimensions.width30),
              child: DefaultButton(
                text: "Save Changes",
                press: (){
                    Navigator.pushNamed(context, SettingsScreen.routeName);
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
  CheckboxListTile buildCheckboxListTile(String title,String subtitle) {
    return CheckboxListTile(
            title: HeadingText(text: title),
            subtitle: SubHeadingText(text: subtitle),
            value: this.valuefirst,
            onChanged:(bool? value) {
              setState(() {
                this.valuefirst = value!;
              });
            },
      );
    }
}
