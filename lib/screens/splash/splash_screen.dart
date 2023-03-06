import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/splash/components/onboarding_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';

class SplashScreen extends StatefulWidget {
  static String routeName="/splash";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:1), ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: kPrimaryGradientColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/tiff white.png',
                          width: Dimensions.tiffImgSplashWidth,),
                      ],
                    ),
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
