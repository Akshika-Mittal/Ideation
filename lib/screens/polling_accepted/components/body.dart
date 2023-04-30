import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/widgets.dart';
import 'package:tiffin/screens/polling_accepted/polling_accepted_screen.dart';
import 'package:tiffin/utils/constants.dart';

import '../../../utils/AppColors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/heading_text.dart';
import '../../../widgets/sub_heading_text.dart';
import '../../polling/polling_result/components/polling_recommendation.dart';
import '../../polling/polling_result/polling_result.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double _opacity = 0.0;
  int randomNumber = 1;
  static int total=0;

  int generateRandom() {
    Random random = new Random();
    randomNumber = random.nextInt(400);
    return randomNumber;
  }
  late ConfettiController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new ConfettiController(
      duration: new Duration(seconds: 2),
    );
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: kLightGrey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth/21.17,vertical:screenHeight/44.86),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: screenHeight/29.90,),
            AutoSizeText(
              'You have received a reward of\n',
              style: kBodyHeading1Text,
            ),
            SizedBox(height: screenHeight/179.451,),
            AutoSizeText(
              '₹ ' + generateRandom().toString() + '.00',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize:30,
                  fontWeight: FontWeight.w800,
                  foreground: Paint()..shader = kPrimaryGradientColor.createShader(Rect.fromLTWH(100.0, 0.0, 200.0, 100.0))
              ),
            ),
            //Image.asset('assets/images/title.png',),
            AutoSizeText(
              'CREDIT',
              style: kBodyHeading1TextBoldBlack,
            ),
            Spacer(),
            //SizedBox(height: Dimensions.height20,),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     primary: kLightRedColor,
            //   ),
            //   onPressed: () {},
            //   child: Row(
            //     // mainAxisSize: MainAxisSize.min,
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       SubHeadingText(
            //         text: 'Total credits won ₹ $total',
            //         size: Dimensions.font17,
            //         color: kWhiteColor,
            //       ), // <-- Text
            //       // SizedBox(
            //       //   width: 5,
            //       // ),
            //       Icon( // <-- Icon
            //         Icons.arrow_forward,
            //         size: 24.0,
            //       ),
            //     ],
            //   ),
            // ),
            Align(
              alignment: Alignment.center,
              child: AutoSizeText(
                'Your Polling Has Been Accepted',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF2D2D2D),
                  height: 1,
                ),
              ),
            ),
            SizedBox(height: screenHeight/44.86,),  //height20
            AutoSizeText(
              'We\'ve accepted your polling, and we\'ll  announce the result at 12pm.',
              textAlign:TextAlign.center,
              style: kH2Heading,
            ),
            SizedBox(height: screenHeight/29.90,), //height30
            //Spacer(),
            //this need to changed and moved to next page
            DefaultButton(
              text: 'View Details',
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PollingResultsScreen()));
                total+=randomNumber;
                print(total);
              },
            ),
          ],
        ),
      ),
    );
  }
}
