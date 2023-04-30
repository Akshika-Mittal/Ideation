import 'package:flutter/material.dart';
import 'package:tiffin/screens/sign_in/components/body.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:false,
     // appBar: AppBar(),
      body: Body(),
    );
  }
}
