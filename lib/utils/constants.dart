import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/size_config.dart';

const kPrimaryColor = Color(0xFFFF5252);
const kPrimaryLightColor = Color(0xFFFFECDF);

const kSecondaryColor = Color(0xFF979797);
//const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds:200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";


final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

Padding kMainPadding = Padding(
  padding: EdgeInsets.only(left: 5,right: 10,top: 10,bottom: 20),
);

//Bold - H1 heading type
TextStyle kH1Heading = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 32,
  fontWeight: FontWeight.w800,
  color: Color(0xFF2D2D2D),
  height: 1,
);

//Medium - H2 heading type
TextStyle kH2Heading = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: Color(0xFF808080),
);

//Regular
TextStyle kH3Heading = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Color(0xFF808080),
);

//Body Content heading text
TextStyle kBodyMainHeadingText = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 32,
  fontWeight: FontWeight.w500,
  color: Color(0xFF2D2D2D),
);

//body 2nd heading type text
TextStyle kBodyHeading1Text = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Color(0xFF2D2D2D),
);

//body text bold - white
TextStyle kBodyHeading1TextBold = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 20,
  fontWeight: FontWeight.w700,
  //height: 5,
  color: Color(0xFFFFFFFF),
);

//body text bold - black
TextStyle kBodyHeading1TextBoldBlack = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 20,
  fontWeight: FontWeight.w700,
  //height: 5,
  color: Color(0xFF2D2D2D),
);

TextStyle kBodyTextBoldBlackMedium = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 15,
  fontWeight: FontWeight.w700,
  //height: 5,
  color: Color(0xFF2D2D2D),
);

TextStyle kBodyTextBoldWhitekMedium = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 15,
  fontWeight: FontWeight.w700,
  //height: 5,
  color: kWhiteColor,
);

//whole body text
TextStyle kB1BodyText = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Color(0xFF808080),
);

//black color body text
TextStyle kB1BodyTextBlack = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: kBlackColor,
);


//white color body text
TextStyle kB1BodyTextWhite = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Color(0xFFFFFFFF),
);

//button text
TextStyle kButtonText = TextStyle(
  fontFamily: 'OpenSans',
  fontSize:16,
  fontWeight: FontWeight.w700,
  color: kWhiteColor,
  height: 1,
);

//button text gradient
TextStyle kButtonTextGradient = TextStyle(
  fontFamily: 'OpenSans',
  fontSize:18,
  fontWeight: FontWeight.w800,
  foreground: Paint()..shader = kPrimaryGradientColor.createShader(Rect.fromLTWH(100.0, 0.0, 200.0, 100.0))
);

//small button style
TextStyle kSmallButtonText = TextStyle(
  fontFamily: 'OpenSans',
  fontSize:12,
  fontWeight: FontWeight.w800,
  color: Color(0xFFFFFFFF),
  height: 1,
);

