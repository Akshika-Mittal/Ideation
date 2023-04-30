import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/gradientBorderDDefaultButton.dart';

import '../../../utils/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin{
  // late FlutterGifController controller;
  // void initState() {
  //   controller = FlutterGifController(vsync: this);
  //   WidgetsBinding.instance?.addPostFrameCallback((_) {
  //     controller.repeat(
  //       min: 0,
  //       max: 200,
  //       period: const Duration(milliseconds: 10),
  //     );
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        color: kWhiteColor,
        child: Padding(
          padding: EdgeInsets.only(left: screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/44.86,bottom: screenHeight/44.86), //width20 height20
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // GifImage(
              //   controller: controller,
              //   image: const AssetImage("assets/images/error.gif"),
              // )
              // ,
              Container(
                height: screenHeight/2.99+screenHeight/12.81,
                decoration: BoxDecoration(
                  image:DecorationImage(
                    //colorFilter: kBlackColor,
                    fit: BoxFit.cover,
                    //alignment: FractionalOffset.topRight,
                    image: AssetImage(
                        'assets/images/404_Error.png'),
                  ),
                ),//height370
              ),
              ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
                  child: AutoSizeText('Error! ', style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 26,
                    fontWeight: FontWeight.w600,

                  ),)),
              SizedBox(height: screenHeight/44.86,), //height20
              AutoSizeText(
                  'We are having difficulty in connecting',
                style: kB1BodyTextBlack,
              ),
              SizedBox(height: screenHeight/22.43,), //height40
              GradientDefaultButton(text: 'Go Back', press: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
