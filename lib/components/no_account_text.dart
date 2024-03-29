import 'package:flutter/material.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/screens/sign_up/sign_up_screen.dart';
import 'package:tiffin/utils/size_config.dart';

import '../screens/forgot_password/forgot_password_screen.dart';
import '../utils/AppColors.dart';


class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don\'t have an account?  ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.popAndPushNamed(context, SignUpScreen.routeName),

          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kMainThemeColor,
            ),
          ),
        ),
      ],
    );
  }
}
