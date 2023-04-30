import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/screens/sign_up/sign_up_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';

class OTPScreen extends StatefulWidget {
  final String phoneNumber;
  final String countryCode;

  //final String sessionId;

  OTPScreen({required this.phoneNumber,required this.countryCode});

  @override
  State<OTPScreen> createState() => _OTPScreenState(phoneNumber: phoneNumber,countryCode: countryCode);
}

class _OTPScreenState extends State<OTPScreen> {
  String phoneNumber,countryCode;
  _OTPScreenState({required this.phoneNumber,required this.countryCode});
  int _timerDuration = 30;
  bool _timerActive = false;
  late Timer _timer;
  void initState() {
    super.initState();
    _timerActive = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _timerDuration--;
      });
      if (_timerDuration == 0) {
        _timer.cancel();
        _timerActive = false;
      }
    });
  }

  void dispose() {
    _timer.cancel();
    // _timerActive = false;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final formKey = GlobalKey<FormState>();
    final defaultPinTheme = PinTheme(
      width: screenWidth/7.563, //width56
      height: screenHeight/16.022, //height56
      textStyle: kB1BodyText,
      decoration: BoxDecoration(
        border: Border.all(
            color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    final TextEditingController _pinPutController = TextEditingController();
    final FocusNode _pinPutFocusNode = FocusNode();
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.only(top: screenHeight/44.862 ,bottom: screenHeight/44.862,left:screenWidth/21.176,right:screenWidth/21.176), //height20,width20,
          child: Column(
            children: [
              SizedBox(
                height: screenHeight/8.974,  //height100
              ),
              Center(
                child: AutoSizeText(
                  'OTP Verification',
                  style: kH1Heading,
                ),
              ),
              SizedBox(
                height: screenHeight/59.816, //height15
              ),
              AutoSizeText("Enter the code sent to your mobile number",style: kH2Heading,
                minFontSize: 12,),
              SizedBox(
                height:screenHeight/179.450,
              ),
              AutoSizeText(widget.countryCode+" "+widget.phoneNumber,style: kH2Heading,
                minFontSize: 12,),
              SizedBox(
                height: screenHeight/29.908, //height30
              ),
              Pinput(
                length: 6,
                showCursor: true,
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                keyboardType: TextInputType.number,
                onCompleted: (pin) => print(pin),
              ),
              SizedBox(
                height: screenHeight/44.862, //height20
              ),
              Text(
                "This code will expired in $_timerDuration",
                style: kB1BodyText,
              ),
              Expanded(child: SizedBox()),
              AutoSizeText("Didn't recieve code?",style: kB1BodyText,),
              TextButton(
                onPressed: _timerActive? null : _resendCode,
                child: Text(
                  'Resend',
                  style: TextStyle(
                    color: _timerActive?kLightGrey:Colors.purple,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight/29.908, //height30
              ),
              DefaultButton(
                text: 'Verify',
                press: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));},
              ),
            ],
          ) ,
        ),
      ),
    );
  }
  void _resendCode() {
    //other code here
    setState((){
      _timerDuration = 30;
      _timerActive = false;
    });
  }
}
