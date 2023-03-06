import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tiffin/screens/non_existing_user/non_existing_user_screen.dart';
import 'package:tiffin/screens/otp/otp_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/utils/size_config.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';


class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
  GlobalKey<FormState> _formKey = GlobalKey();
  String _phoneNumber="";
  TextEditingController _numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height20),
      child: Form(
        key: _formKey,
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: Dimensions.height50,
              ),
              HeadingText(
                text: 'Login to your TIFF Account',
                size: Dimensions.font26,
              ),
              SizedBox(
                height: Dimensions.height50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width30
                ),
                child: Container(
                  //color: kBlackColor,
                  // decoration: BoxDecoration(
                  //   //color: kBlackColor,
                  //   border: Border.all(
                  //     color: kBlackColor,
                  //   ),
                  // ),
                  child: IntlPhoneField(
                    // decoration: InputDecoration(
                    //   labelText: 'Phone Number',
                    //   enabledBorder: UnderlineInputBorder(
                    //     //borderSide: BorderSide(color: kBlackColor),
                    //   ),
                    //   focusedBorder: UnderlineInputBorder(
                    //     //borderSide: BorderSide(color: kBlackColor),
                    //   ),
                    // ),
                    initialCountryCode:'IN',
                    onChanged: (phone){
                      print(phone.completeNumber);
                      _phoneNumber=phone.completeNumber;
                    },


                ),
                ),
              ),
              //not an issue uska
              Spacer(),
              DefaultButton(
                text: 'Next',
                press: () {
                  print(_phoneNumber);
                  _phoneNumber=='+9112345678'?
                  Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => OtpScreen())):Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NonExistingUserScreen()));
              },)

              // _phoneNumber=='+9112345678'?DefaultButton(
              //   text: 'Next',
              //   press: () {
              //     print(_phoneNumber);
              //     Navigator.of(context).push(MaterialPageRoute(
              //         builder: (context) => OtpScreen()));
              //   },
              // ):DefaultButton(
              //   text: 'Hello',
              //   press: () {
              //     print(_phoneNumber); // iss wale pr bhi wahi no aara jispe check lagare
              //     Navigator.of(context).push(MaterialPageRoute(
              //         builder: (context) => NonExistingUserScreen()));
              //   },
              // ),
              // _phoneNumber=='+9112345678'?Text("Successfull"):Text("Unsuccessfull"),
              // isRegistered? :
              // if(_phoneNumber == '12345678'){
              //   DefaultButton(
              //     text: 'Next',
              //     press: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (context) => OtpScreen()));
              //     },
              //   ),
              // }
              // else
              //   {
              //   Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => NonExistingUserScreen()));
              //   }
              //SizedBox(height: Dimensions.height10,)
            ],
        ),
      ),
    );
  }
}


