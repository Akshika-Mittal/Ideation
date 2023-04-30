import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/delivery_location/components/add_another_address.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/final_delete.dart';
import 'package:http/http.dart' as http;
import '../../../../../utils/CommonUtils.dart';
import '../../../../../utils/url_constants.dart';
import '../../../../../widgets/AppBarWidget.dart';
import '../../../../../widgets/gradientBorderDDefaultButton.dart';

class DontWantTo extends StatefulWidget {
  static String routeName = "/dont_want_to";

  @override
  State<DontWantTo> createState() => _DontWantToState();
}

class _DontWantToState extends State<DontWantTo> {
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _otpController = TextEditingController();
  String phone="";

  String _errorMsg = "";
  bool _validPhoneNumber = false;
  Future<bool> checkPhoneNumberExists(String phoneNumber) async {
    final response = await http.get(Uri.parse(UrlConstant.checkPhoneNumber.replaceAll("{phoneNumber}", phoneNumber)));
    if (response.statusCode == 200) {
      print(_phoneNumberController.text);
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
        print("Phone Number exists");
        if(_otpController.text == 123456 ){
          print("OTP verified");
        }
        else{
          print("OTP not verified");
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
      body: Container(
        color: kLightGrey,
        child: Padding(
          padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/44.86), //left=right=20 top=10
          child: Column(
            children: <Widget>[
              //DividerWidget(),
              //SizedBox(height: Dimensions.height20,),
              InputField(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  hintText: 'Please enter your phone number',
                  inputType: TextInputType.text,
                  controller: _phoneNumberController,
              ),
              // Visibility(
              //   visible: _validPhoneNumber==false,
              //   child:SizedBox(height:screenHeight/224.31,),//height4
              // ),
              // Visibility(
              //   visible: _validPhoneNumber==false,
              //   child: Padding(
              //     padding: EdgeInsets.only(left: screenWidth/21.176,right: screenWidth/21.176),
              //     child: Align(
              //       alignment: Alignment.centerLeft,
              //       child: AutoSizeText(
              //         _errorMsg,
              //         textAlign: TextAlign.left,
              //         style: TextStyle(
              //           fontFamily: 'OpenSans',
              //           fontSize: 12,
              //           fontWeight: FontWeight.w400,
              //           color: Colors.red,),
              //       ),
              //     ),
              //   ),
              // ),
              Visibility(
                visible: _validPhoneNumber==true,
                child: SizedBox(height: screenHeight/89.72,), //height10
              ),
              Visibility(
                visible: _validPhoneNumber=true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InputField(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        hintText: 'Please verify your phone number',
                        inputType: TextInputType.number,
                        controller: _otpController,
                      ),
                    ),
                    Expanded(child: DefaultButton(text: "Verify", press: ()=>validatePhoneNumber(context),)),
                    // DefaultButton(
                    //     text: 'Verify',
                    //     press: (){
                    //       validateOTP(context);
                    //     },
                    // ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText('Anything else you would like to add?',style: kBodyHeading1Text,)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText("Do you have feedback for us? We would love to hear from you!",style: kB1BodyText,)),
              SizedBox(height: screenHeight/89.72,), //height10
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
