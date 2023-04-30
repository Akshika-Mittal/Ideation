import 'package:flutter/material.dart';
import 'package:tiffin/components/notifications.dart';
import 'package:tiffin/screens/complete_profile/complete_profile_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';

import '../components/navigation_drawer.dart';
import '../screens/profile/profile_screen.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  const AppBarWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    {
      return AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          onPressed: () {
            Navigator.pop(context);
            // Handle back button press
          },
        ),
        centerTitle: true,
        title: Screen_Heading(text: text,),
      );
    }
  }
}
