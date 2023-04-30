import 'package:animate_icons/animate_icons.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/track_order/track_order_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/gradientBorderDDefaultButton.dart';

import '../../../utils/dimensions.dart';
import '../../../widgets/screen_heading.dart';

class OrderPlacedScreen extends StatefulWidget {
  const OrderPlacedScreen({Key? key}) : super(key: key);

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen>with TickerProviderStateMixin {
  bool isPlaying = false;
  final controller = ConfettiController();
  late AnimationController iconController;

  void initState(){
    super.initState();
    controller.play();

    iconController=AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    iconController.animateTo(1.0);



  }
  void dispose(){
    controller.dispose();
    iconController.dispose();
    super.dispose();
  }
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
                ConfettiWidget(
                  blastDirectionality: BlastDirectionality.explosive,
                  confettiController: controller,
                  shouldLoop: true,
                ),
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
                  'Order Placed!',style: kH1Heading,
                ),
                SizedBox(height: screenHeight/44.86,), //height20
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Your order has been placed successfully. ',
                      style: kBodyHeading1Text,
                    ),
                    AutoSizeText(
                      'For more detials, click on below button ',
                      style: kBodyHeading1Text,
                    ),
                    SizedBox(height: screenHeight/109.90,), //height8
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ShaderMask(
                            blendMode: BlendMode.srcATop,
                            shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
                            child: AutoSizeText('Happy Dining ', style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 26,
                              fontWeight: FontWeight.w600,

                            ),)),
                        AutoSizeText('😋',style:TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 26,
                          fontWeight: FontWeight.w600,

                        ) ,)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenHeight/12.81,), //height70
                GradientDefaultButton(text: 'Track Order', press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TrackOrderScreen()));
                }),
              ],
            ),
      ),
      ),
    );
  }
}
