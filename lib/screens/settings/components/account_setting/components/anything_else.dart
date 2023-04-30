import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/final_delete.dart';
import 'package:http/http.dart' as http;
import '../../../../../components/input_field.dart';
import '../../../../../utils/CommonUtils.dart';
import '../../../../../widgets/AppBarWidget.dart';
import '../../../../../widgets/gradientBorderDDefaultButton.dart';

class AnythingElse extends StatefulWidget {
  static String routeName = "/anything_else";

  @override
  State<AnythingElse> createState() => _AnythingElseState();
}

class _AnythingElseState extends State<AnythingElse> {
  String _errorMsg = "";
  final _phoneNumberController = TextEditingController();
  final _otpController = TextEditingController();
  bool _validPhoneNumber = false;

  Future<bool> checkPhoneNumberExists(String phoneNumber) async {
    final response = await http.get(Uri.parse('https://8a9c-2405-201-6000-41c3-3476-603c-c27-d0e9.in.ngrok.io/checkPhoneNumber?phoneNumber=$_phoneNumberController.text()'));
    if (response.statusCode == 200) {
      var responseBody = jsonDecode(response.body);
      print(responseBody);
      var value = responseBody["apiErrorCode"];
      print(value);
      if(value == 1100){
        print("phone no doesnot exist");
        return false;
      }
      else{
        return true;
      }
      // Successful response
      // This will print the response message from the backend
    } else {
      // Error response
      print('Failed to check phone number: ${response.statusCode}');
      return false;
    }
  }

  //validator function
  Future<void> validatePhoneNumber(BuildContext ctx) async{
    setState(() {
      _validPhoneNumber=false;
      _errorMsg="";
    });
    if(CommonUtils.isNullOrBlank(_phoneNumberController.text )){
      setState(() {
        _errorMsg="Please enter your phone number!";
      });
    }
    else{
      bool exists = await checkPhoneNumberExists(_phoneNumberController.text);
      if(exists){
        _errorMsg="";
        _validPhoneNumber=true;
        if(_otpController.value == 123456 ){
          Navigator.push(context, MaterialPageRoute(builder: (context) => FInalDelete(phoneNumber: _phoneNumberController.text)));
        }
        else{
          print('Wrong otp entered');
        }
      }
      else{
        _errorMsg = "Please enter valid phone number!";
      }
    }
  }

  Future<bool> validateOTP(BuildContext ctx) async{

    if(_otpController.value == 123456 ){
      return true;
    }
    else{
      return false;
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
        child: Padding(
          padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/44.86), //left=right=20 top=10
          child: Column(
            children: <Widget>[
              InputField(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                hintText: 'Please enter your phone number',
                inputType: TextInputType.text,
                controller: _phoneNumberController,
              ),
              Visibility(
                visible: _validPhoneNumber==false,
                child:SizedBox(height:screenHeight/224.31,),//height4
              ),
              Visibility(
                visible: _validPhoneNumber==false,
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth/21.176,right: screenWidth/21.176),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      _errorMsg,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _validPhoneNumber==true,
                child: SizedBox(height: screenHeight/89.72,), //height10
              ),
              Visibility(
                visible: _validPhoneNumber==true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InputField(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      hintText: 'Please verify your phone number',
                      inputType: TextInputType.number,
                      controller: _otpController,
                    ),
                    // DefaultButton(
                    //     text: 'Verify',
                    //     press: (){
                    //       validateOTP(context);
                    //     },
                    // ),
                  ],
                ),
              ),
              //DividerWidget(),
              Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText("Anything else you would like to add?",style: kBodyHeading1Text,),
              ),
              //SizedBox(height: Dimensions.height10,),
              Align(
                alignment: Alignment.centerLeft,
                child: AutoSizeText("Do you have any feedback for us? We would love to hear from you",style: kB1BodyText,),
              ),
              DividerWidget(),
              Spacer(),
              DefaultButton(
                text: "Next",
                press: () {
                  validatePhoneNumber(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
