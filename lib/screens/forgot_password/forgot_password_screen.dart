import 'package:flutter/material.dart';
import 'package:tiffin/screens/forgot_password/components/body.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: SubHeadingText(
          text: 'Forgot Password?',
        ),
      ),
      body: Body(),
    );
  }
}
