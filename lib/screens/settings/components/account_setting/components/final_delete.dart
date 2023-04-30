import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';
import 'package:http/http.dart' as http;
import '../../../../../utils/url_constants.dart';
import '../../../../../widgets/AppBarWidget.dart';
import '../../../../../widgets/gradientBorderDDefaultButton.dart';
import 'account_deleted_screen.dart';

class FInalDelete extends StatefulWidget {
  static String routeName = "/final_delete";
  final String phoneNumber;
  const FInalDelete({Key? key,required this.phoneNumber}): super(key: key);

  @override
  State<FInalDelete> createState() => _FInalDeleteState(this.phoneNumber);
}

class _FInalDeleteState extends State<FInalDelete> {
  final String phoneNumber;
  _FInalDeleteState(this.phoneNumber,);
  Future<void> deleteAccount(String phoneNumber)async{
    final response = await http.get(Uri.parse(UrlConstant.deleteCustomer));
    if (response.statusCode == 200) {
      var responseBody = jsonDecode(response.body);
      print(responseBody);
      var value = responseBody["apiErrorCode"];
      print(value);
      if(value == 1100){
        print("User cannot be deleted");
        //return false;
      }
      else{
        print('User deleted');
        Navigator.push(context, MaterialPageRoute(builder: (context) => AccountDeletedScreen()));
      }
      // Successful response
      // This will print the response message from the backend
    } else {
      // Error response
      print('Failed to fetch user: ${response.statusCode}');
      //Navigator.pushNamed(context, AccountDeletedScreen.routeName);
    }
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Delete Account')),
      body: SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/44.86), //left=right=20 top=10
            child: Column(
              children: <Widget>[
                //DividerWidget(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText("You\'re about to delete your account",style: kBodyHeading1Text,),
                  ),
                AutoSizeText("All the data associated with it (including your profile photos, subscription) will be permanently deleted in 30 days. This information can\'t be recovered once the account is deleted ",style: kB1BodyText,),
                Spacer(),
                DefaultButton(
                  text: "Delete my account now",
                  press: () {
                    deleteAccount(phoneNumber);
                  },
                ),
                TextButton(
                  onPressed: () { Navigator.pushNamed(context, SettingsScreen.routeName); },
                  child:
                    AutoSizeText('Back to Settings',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize:14,
                        fontWeight: FontWeight.w800,
                        color: kMainThemeColor
                    ),
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
