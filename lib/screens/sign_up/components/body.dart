import 'package:flutter/material.dart';
import 'package:tiffin/widgets/custom_suffix_icon.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/components/form_error.dart';
import 'package:tiffin/widgets/social_cards.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/screens/sign_up/components/sign_up_form.dart';
import 'package:tiffin/utils/size_config.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete yoyr details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialCard(
                    icon: "assets/icons/facebook.png",
                    press: (){},
                  ),
                  socialCard(
                    icon: "assets/icons/google.png",
                    press: (){},
                  ),
                  socialCard(
                    icon: "assets/icons/twitter.png",
                    press: (){},
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "By continuing your confirm that you agree \nwith our Terms and Condition",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


