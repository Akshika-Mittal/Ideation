import 'package:animate_icons/animate_icons.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/splash/components/onboarding_screen.dart';
import 'package:tiffin/screens/track_order/track_order_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/gradientBorderDDefaultButton.dart';


class AccountDeletedScreen extends StatefulWidget {
  const AccountDeletedScreen({Key? key}) : super(key: key);
  static String routeName = "/deleted_account";

  @override
  State<AccountDeletedScreen> createState() => _AccountDeletedScreenState();
}

class _AccountDeletedScreenState extends State<AccountDeletedScreen>{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child:  Padding(
          padding: EdgeInsets.only(left: screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/44.86,bottom: screenHeight/44.86), //all20
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenHeight/35.89+screenHeight/35.89),//radius25
                    gradient: kPrimaryGradientColor
                ),
                child:Padding(
                  padding: EdgeInsets.symmetric(horizontal:screenWidth/52.94,vertical: screenHeight/109.90 ), //height=width=8
                  child: Icon(
                    Icons.check_rounded,
                    size: 50,
                    color: kWhiteColor,
                  ),
                ),
              ),
              SizedBox(height: screenHeight/17.94,), //height50
              AutoSizeText(
                'Acount Deleted',style: kH1Heading,
              ),
              SizedBox(height: screenHeight/44.86,), //height20
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Your account has been deleted successfully. ',
                    style: kBodyHeading1Text,
                  ),
                  AutoSizeText(
                    'Hope you enjoyed our service. Lokking forward to serve you again 😋',
                    style: kBodyHeading1Text,
                  ),
                  SizedBox(height: screenHeight/109.90,), //height8
                ],
              ),
              SizedBox(height: screenHeight/12.81,), //height70
              GradientDefaultButton(text: 'Home Screen', press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
