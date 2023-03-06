import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';

import '../../../utils/dimensions.dart';
import '../../home/home_screen.dart';

class AddressDetails extends StatelessWidget {
  static String routeName = "/addressDetails";

  final String heading;
  final Function()? press;
  AddressDetails({
    required this.heading,
    required this.press});


  //this.isStudent = isStudent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: '',),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.height20,horizontal: Dimensions.width10),
        child: Column(
          children: <Widget>[
            HeadingText(text: heading),
            SizedBox(height: Dimensions.height10,),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                hintText: 'Address',
              ),
            ),
            SizedBox(height: Dimensions.height10,),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                hintText: 'Pincode',
              ),
            ),
            SizedBox(height: Dimensions.height10,),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                hintText: 'City',
              ),
            ),
            SizedBox(height: Dimensions.height10,),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                hintText: 'State',
              ),
            ),
            Spacer(),
            DefaultButton(text: 'Continue',
              press: press,
            ),
          ],
        ),
      ),
    );
  }
}
