import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/enums.dart';
import 'package:jiffy/jiffy.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';

import '../../utils/dimensions.dart';
import '../../widgets/AppBarWidget.dart';
import '../../widgets/screen_heading.dart';
import '../delivery_location/delivery_location_screen.dart';
import 'menu_selection/menu_selection_screen.dart';
class PollingiveNowScreen extends StatefulWidget {
  const PollingiveNowScreen({Key? key}) : super(key: key);

  @override
  State<PollingiveNowScreen> createState() => _PollingiveNowScreenState();
}

class _PollingiveNowScreenState extends State<PollingiveNowScreen> {
  @override

  var dt=DateTime.now();
  String result2 = Jiffy(DateTime.now()).format('MMM do yy');

  // String dateStr = dt.toString().substring(0, 10);


  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'')),
      body: SafeArea(
        child: Container(
            color: kLightGrey,
            child:Padding(
              padding: EdgeInsets.only(left: screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/89.72), //top10 left=right=20
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "Polling is live now",
                    style: kH1Heading,
                  ),
                  SizedBox(height: screenHeight/89.72/2,), //height10
                  AutoSizeText(
                    "By polling you will be choosing tomorrows menu for your tiffin.",
                    style: kH2Heading,
                  ),
                  SizedBox(height: screenHeight/44.86,), //height20
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>DeliveryLocationScreen(),
                      ));
                    },
                    child: Container(
                      height: screenHeight/8.97, //height100
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                        gradient: kPrimaryGradientColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left:screenWidth/28.23,right: screenWidth/28.23,top: screenHeight/58.91,bottom: screenHeight/58.91), //all15
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                    'Lunch',
                                  style: kBodyHeading1TextBold,
                                ),
                                AutoSizeText(
                                  result2,
                                  style:kB1BodyTextWhite,
                                ),
                              ],
                            ),
                            SizedBox(width: screenWidth/21.17,), //width20
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth/7.05+screenWidth/84.705,), //top20 left 65
                              child: Icon(
                                Icons.sunny,
                                size: 160,
                                color: Colors.white.withOpacity(0.1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight/89.72,), //height10
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>DeliveryLocationScreen(),
                      ));
                    },
                    child: Container(
                      height:screenHeight/8.97, //height100
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                        gradient: kPrimaryGradientColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left:screenWidth/28.23,right: screenWidth/28.23,top: screenHeight/58.91), //all15
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Dinner',
                                  style:  kBodyHeading1TextBold,
                                ),
                                AutoSizeText(
                                  result2,
                                  style: kB1BodyTextWhite,
                                ),
                              ],
                            ),
                            SizedBox(width: screenWidth/21.17,), //width20
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth/7.05+screenWidth/84.705,), //top4 left 65
                              child: Icon(
                                Icons.mode_night_rounded,
                                size: 160,
                                color: Colors.white.withOpacity(0.1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight/89.72,), //height10
                  SizedBox(height: screenHeight/17.94,), //height50
                  Align(
                    alignment: Alignment.center,
                    child: AutoSizeText('Poll ends in',style: kBodyHeading1TextBoldBlack),
                  ),
                  SizedBox(height: screenHeight/44.86,), //height20
                  Align(
                    alignment: Alignment.center,
                    child:TimerCountdown(
                      format: CountDownTimerFormat.hoursMinutesSeconds,
                      endTime: DateTime.now().add(Duration( hours: 23-dt.hour,
                      minutes: 60-dt.minute,
                      seconds: 60-dt.second,),
                      ),
                      onEnd: () {
                        print("Timer finished");
                      },
                      timeTextStyle: kBodyHeading1TextBoldBlack,
                      colonsTextStyle: kBodyHeading1TextBoldBlack,
                      descriptionTextStyle: kBodyHeading1TextBoldBlack,
                    ),
                  ),
                  Spacer(),
                  //SizedBox(height: screenHeight/22.43,), //height40
                  Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35,vertical:screenHeight/89.72 ),
                    child: AutoSizeText('If you don’t poll your tiffin will be dispatched according to previous data of location.\nRead Terms and Condition for more information.\nTo cancel for tomorrow’s service go to your dashboard and opt out the service for tomorrow.', style: kB1BodyText,textAlign: TextAlign.center,),
                    ),
                ],
              ),
            ),
          ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
    );
  }
}
