import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/screens/otp/components/otp_form.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/utils/size_config.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height20),
      child: Column(
        children: [
          SizedBox(
              height: Dimensions.height25,
          ),
          HeadingText(
              text: "OTP Verification",
          ),
          SubHeadingText(text: "We sent your code to +1 898 860 ***"),
          buildTimer(),
          SizedBox(
            height: Dimensions.height25,
          ),
          // OtpTextField(
          //   numberOfFields: 6,
          //   enabled: true,
          //   obscureText: false,
          //   fillColor: Colors.black,
          //   //borderColor: Color(0xFF512DA8),
          //   focusedBorderColor: kMainThemeColor,
          //   //styles: [Theme.of(context).textTheme.headline6,],
          //   textStyle: TextStyle(
          //     color: Colors.black,
          //   ),
          //   showFieldAsBox: false,
          //   onCodeChanged: (String code){},
          //   onSubmit: (String verificationCode){
          //     showDialog(
          //         context: context,
          //         builder: (context){
          //           return AlertDialog(
          //             title: Text("Verification Code"),
          //             content: Text('Code entered is $verificationCode'),
          //           );
          //         });
          //   },
          // ),
          Pinput(
            length: 6,
            // defaultPinTheme: defaultPinTheme,
            // focusedPinTheme: focusedPinTheme,
            // submittedPinTheme: submittedPinTheme,

            showCursor: true,
            onCompleted: (pin) => print(pin),
          ),

          //OtpForm(),
          SizedBox(height: Dimensions.height10),
          GestureDetector(
            onTap: () {// OTP code resend
            },
            child: SubHeadingText(
              text: "Resend OTP Code",
            ),
          ),
          Spacer()
,        DefaultButton(
            text: "Confirm",
            press: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeScreen()));
            },
          ),
        ],
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => SubHeadingText(
            text: "00:${value.toInt()}",
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}