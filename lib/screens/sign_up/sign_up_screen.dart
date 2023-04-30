import 'package:flutter/material.dart';
import 'package:tiffin/screens/sign_up/components/body.dart';

import '../../utils/dimensions.dart';
import '../../widgets/screen_heading.dart';
class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Body(),
    );
  }
}
