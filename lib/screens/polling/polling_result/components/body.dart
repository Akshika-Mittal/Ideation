import 'dart:math';
import 'package:scratcher/scratcher.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/screens/polling/polling_result/components/polling_recommendation.dart';
import 'package:confetti/confetti.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double _opacity = 0.0;
  int randomNumber = 0;
  static int total=0;

  int generateRandom() {
    Random random = new Random();
    randomNumber = random.nextInt(10);
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
    return Container(
      color: kAppBackgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        child: Column(
          children: <Widget>[
            SizedBox(height: Dimensions.height30,),
            Container(
              height: Dimensions.height160+Dimensions.height50,
              width: Dimensions.screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius25),
                color: Colors.blueAccent,
              ),
                child: Scratcher(
                  accuracy: ScratchAccuracy.low,
                  color: Colors.white,
                  threshold: 40,
                  brushSize: 30,
                  image: Image.asset(
                    "assets/images/credits.png",
                    fit: BoxFit.fitWidth,
                  ),
                  onThreshold: () => _controller.play(),
                  child: Container(
                    height: Dimensions.height300,
                    width:  Dimensions.screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Colors.white,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              ConfettiWidget(
                                blastDirectionality: BlastDirectionality.explosive,
                                confettiController: _controller,
                                particleDrag: 0.05,
                                emissionFrequency: 0.05,
                                numberOfParticles: 30,
                                gravity: 0.05,
                                shouldLoop: false,
                                colors: [
                                  Colors.grey,
                                  Colors.red,
                                ],
                              ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: Dimensions.width30,vertical: Dimensions.height30),
                            child: HeadingText(
                              text: '₹ ' + generateRandom().toString() + '.0',
                              color: kMainThemeColor,
                              size: Dimensions.font26,
                              ),
                            ),
                          //Image.asset('assets/images/title.png',),
                          SubHeadingText(
                            text: 'CREDITS',
                            color: kMainThemeColor,
                            size: Dimensions.font17,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ),
            SizedBox(height: Dimensions.height20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kLightRedColor,
              ),
              onPressed: () {},
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SubHeadingText(
                    text: 'Total credits won ₹ $total',
                    size: Dimensions.font17,
                    color: kWhiteColor,
                  ), // <-- Text
                  // SizedBox(
                  //   width: 5,
                  // ),
                  Icon( // <-- Icon
                    Icons.arrow_forward,
                    size: 24.0,
                  ),
                ],
              ),
            ),
            HeadingText(
              text: 'Your Polling Has Been Accepted',
              size: Dimensions.font17,
              color: kBlackColor,
            ),
            SizedBox(height: Dimensions.height20,),
            SubHeadingText(
              text: 'We\'ve accepted your polling, and we\'ll \n announce the result at 12pm.',
              size: Dimensions.font16,
              color: kTextColor,
            ),
            SizedBox(height: Dimensions.height60,),
            //Spacer(),
            //this need to changed and moved to next page
            DefaultButton(
              text: 'View Details',
              press: () {
                total+=randomNumber;
                print(total);
              },
            ),
            SizedBox(height: Dimensions.height40,),
            HeadingText(
              text:'Recommend',
              color: kBlackColor,
              size: Dimensions.font17,
              ),
            SizedBox(height: Dimensions.height20,),
            SubHeadingText(
              text:'To recommend food items to be included into the main \nmenu, click on Recommend tab below.',
              color: kTextColor,
              size: Dimensions.font16,
            ),
            SizedBox(height: Dimensions.height20,),
            DefaultButton(
              text: 'Recommend',
              press: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PollingRecommendation(),
                ));
              },
            ),
            //total credits points need to be moved to next page
            // Padding(
            //   padding: const EdgeInsets.only(left: 25.0),
            //   child: Text(
            //     '$total+$randomNumber',
            //     style: TextStyle(
            //       color: Color.fromRGBO(124, 124, 124, 1),
            //       fontWeight: FontWeight.w500,
            //       fontSize: 16,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
