import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:tiffin/components/cancel_service.dart';
import 'package:tiffin/components/todays_menu.dart';
import 'package:tiffin/screens/home/components/OrderStatusHomePage.dart';
import 'package:tiffin/screens/home/components/Reschedule.dart';
import 'package:tiffin/screens/polling/MainCourseOne.dart';
import 'package:tiffin/screens/single_order/single_order_screen.dart';
import 'package:tiffin/screens/subscription_plan/subscription_plan_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/utils/url_constants.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

import '../../../components/navigation_drawer.dart';
import '../../../services/customer_services.dart';
import '../../../widgets/default_button.dart';
import '../../polling/polling_live_now.dart';
import '../../polling/polling_result/components/polling_recommendation.dart';
import '../../profile/profile_screen.dart';
import '../../referrals/referrals_screen.dart';
import '../../subscription_plan/components/Plans15Days.dart';
import '../../subscription_plan/components/Plans30Days.dart';
import 'dietician_details_connect.dart';
import 'healthy_plan_menu.dart';
import 'healthy_profile.dart';
import 'package:http/http.dart' as http;

int totaldelivery = 10;

class HomeBody extends StatefulWidget {

  @override
  State<HomeBody> createState() => _HomeBodyState();
}
class _HomeBodyState extends State<HomeBody> {
  int _processIndex = 2;
 //Timeline
  deliverStatus() {
    String status;
    if(deliveryStatusCode == 1){
      status = 'open for polling';
      return  status;
    }
    else if(deliveryStatusCode == 2)
    {
      status = 'preparing';
      return  status;
    }
    else if(deliveryStatusCode == 3)
    {
      status = 'picked up';
      return  status;
    }
    else if(deliveryStatusCode == 4)
    {
      status = 'out for delivery';
      return  status;
    }
    else if(deliveryStatusCode == 5)
    {
      status = 'delivered';
      return  status;
    }
  }


 //change value if subscription is running for user
  bool isSingleOrder = false;
  bool isSubscribed = false;
  String planOpted ="Pro Platinum ";

  final int deliveryStatusCode = 1;

  final _controller = OrderStatusHomeScreenControl();

  int numberOfDaysLeft = 30 - 10;
 //use totaldelivery while deploying
  DateTime date = DateTime.now();

  String nextDate = DateFormat.yMMMMd().format(DateTime.now().add(new Duration(days: 1)));

  String currentDay = DateFormat('EEEE').format(DateTime.now());

  String nextDay =
  DateFormat('EEEE').format(DateTime.now().add(new Duration(days: 1)));

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: screenWidth / 21.17,
                            top: screenHeight / 179.451), //right20 top5
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                            Get.to(() => NavigationDrawerWidget(),
                                transition: Transition.rightToLeftWithFade);
                          },
                          child: CircleAvatar(
                            radius: screenWidth / 24.913, //width17
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                                'assets/images/profile_image.jpg'
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: kLightGrey,
                      child: Padding(
                        padding: EdgeInsets.only(left: screenWidth / 21.17,
                            right: screenWidth / 21.17,
                            top: screenHeight / 179.451,
                            bottom: screenHeight / 17.94),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Hi Akshika !",
                              style: kH1Heading,),
                            Text('Kya haal chal? Chaliye shuru kiya jaye..',
                              style: kB1BodyText,),
                            Visibility(visible: isSubscribed,
                                child: SizedBox(height: screenHeight / 44.86,)),
                            //height20
                            Visibility(
                              visible: isSubscribed,
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: screenHeight / 6.64, //height135
                                  decoration: BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.screenWidth / 105.88),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          //SizedBox(height: 50,),
                                          Container(
                                            width: screenWidth / 3.25,
                                            height: screenHeight / 7.80,
                                            child: Padding(
                                              padding: EdgeInsets.all(
                                                  screenWidth / 28.23),
                                              child: SfRadialGauge(
                                                  axes: <RadialAxis>[
                                                    RadialAxis(
                                                        minimum: 0,
                                                        maximum: 30,
                                                        showLabels: false,
                                                        showTicks: false,
                                                        axisLineStyle: AxisLineStyle(
                                                          thickness: 0.2,
                                                          cornerStyle: CornerStyle
                                                              .bothCurve,
                                                          gradient: SweepGradient(
                                                              startAngle: 3 *
                                                                  3.14 / 2,
                                                              endAngle: 7 *
                                                                  3.14 / 2,
                                                              tileMode: TileMode
                                                                  .repeated,
                                                              colors: [
                                                                Color(
                                                                    0xFF8639b1),
                                                                Color(
                                                                    0xFFEB2133),
                                                                Color(
                                                                    0xFFFD9E41)
                                                              ]
                                                          ),
                                                          thicknessUnit: GaugeSizeUnit
                                                              .factor,
                                                        ),
                                                        pointers: <
                                                            GaugePointer>[
                                                          RangePointer(
                                                            value: totaldelivery
                                                                .toDouble(),
                                                            cornerStyle: CornerStyle
                                                                .bothCurve,
                                                            width: 0.2,
                                                            sizeUnit: GaugeSizeUnit
                                                                .factor,
                                                            gradient: SweepGradient(
                                                              startAngle: 3 *
                                                                  3.14 / 2,
                                                              endAngle: 7 *
                                                                  3.14 / 2,
                                                              tileMode: TileMode
                                                                  .repeated,
                                                              colors: [
                                                                Color(
                                                                    0xFF8639b1),
                                                                Color(
                                                                    0xFFEB2133),
                                                                Color(
                                                                    0xFFFD9E41)
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                        annotations: <
                                                            GaugeAnnotation>[
                                                          GaugeAnnotation(
                                                              positionFactor: 0.1,
                                                              angle: 90,
                                                              widget: Column(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                //crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                        EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                            0,
                                                                            25,
                                                                            0,
                                                                            0),
                                                                        child: AutoSizeText(
                                                                          totaldelivery
                                                                              .toStringAsFixed(
                                                                              0),
                                                                          style: kB1BodyText,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                        EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                            0,
                                                                            25,
                                                                            0,
                                                                            0),
                                                                        child: AutoSizeText(
                                                                          '/30',
                                                                          style: kB1BodyText,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  AutoSizeText(
                                                                    'Order',
                                                                    style: kB1BodyText,
                                                                  ),
                                                                ],
                                                              ))
                                                        ])
                                                  ]),
                                            ),
                                          ),
                                          Container(
                                            width: screenHeight / 224.31 / 2,
                                            height: screenHeight / 8.97,
                                            //height100
                                            color: kLightGrey,
                                          ),
                                          SizedBox(
                                            width: screenWidth / 35.29,
                                            height: screenHeight / 6.64,
                                          ),
                                          if (isSubscribed) Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: [
                                              AutoSizeText(
                                                'Plan Subscribed: Gold Pro ',
                                                style: TextStyle(
                                                  fontFamily: 'OpenSans',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  //height: 5,
                                                  color: Color(0xFF2D2D2D),
                                                ),),
                                              AutoSizeText(
                                                  'Lunch : 6 delivered',
                                                  style: kB1BodyText),
                                              AutoSizeText(
                                                  'Dinner : 4 delivered',
                                                  style: kB1BodyText),
                                              AutoSizeText(
                                                  'Start Day : 01/02/2023',
                                                  style: kB1BodyText),
                                              AutoSizeText(
                                                  'End Day: 15/03/2023',
                                                  style: kB1BodyText),
                                            ],
                                          ) else
                                            Container(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  AutoSizeText(
                                                    'You are not subsribed to any tiff plan.',
                                                    style: kB1BodyText,
                                                  ),
                                                  SizedBox(
                                                    height: screenHeight /
                                                        17.94,),
                                                  Container(
                                                    height: screenHeight /
                                                        29.90,
                                                    width: screenWidth / 1.9,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .circular(
                                                            screenHeight /
                                                                224.31),
                                                        //width4
                                                        gradient: kPrimaryGradientColor),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .push(
                                                            MaterialPageRoute(
                                                                builder: (
                                                                    context) =>
                                                                    SubscriptionPlanScreen()));
                                                      },
                                                      child: Align(
                                                          alignment: Alignment
                                                              .center,
                                                          child: Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                left: screenWidth /
                                                                    42.35,
                                                                right: screenWidth /
                                                                    42.35,
                                                                top: screenHeight /
                                                                    89.72,
                                                                bottom: screenHeight /
                                                                    89.72),
                                                            //height=width=10
                                                            child: AutoSizeText(
                                                              'Subscribe Now',
                                                              style: kSmallButtonText,),
                                                          )),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            Visibility(
                              visible: (!planOpted.contains('Healthy') &&
                                  isSubscribed) || isSingleOrder,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.width4),
                                    color: Colors.white),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: Dimensions.width20,
                                          top: Dimensions.height10,
                                          right: Dimensions.width10),
                                      child: Text(
                                        "Your order is ${deliverStatus()}",
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF2D2D2D),),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: Dimensions.width20,
                                          right: Dimensions.width10),
                                      child: Text("Lunch: Arriving in 45 mins",
                                        style: kB1BodyText,),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: Dimensions.width10,
                                          top: Dimensions.height10,
                                          right: Dimensions.width10,
                                          bottom: Dimensions.height20),
                                      child: LinearPercentIndicator(
                                        linearGradientBackgroundColor: LinearGradient(
                                          colors: [
                                            Color(0xFFEB2133).withOpacity(0.1),
                                            Color(0xFFFD9E41).withOpacity(0.1)
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        linearGradient: kPrimaryGradientColor,
                                        lineHeight: 10,
                                        percent: (deliveryStatusCode * 2) / 10,
                                        barRadius: Radius.circular(
                                            Dimensions.width4),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: (!planOpted.contains('Healthy') &&
                                  isSubscribed) || isSingleOrder,
                              child: SizedBox(
                                height: Dimensions.height20,
                              ),
                            ),
                            Visibility(
                              visible: planOpted.contains('Healthy'),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>
                                          HealthyPlanMenu()));
                                },
                                child: Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  height: screenHeight / 8.97,
                                  decoration: BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.width4),
                                    image: DecorationImage(
                                      //colorFilter: kBlackColor,
                                      fit: BoxFit.scaleDown,
                                      alignment: FractionalOffset.topRight,
                                      image: AssetImage(
                                          'assets/images/Nutrimeal.png'),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: screenWidth / 28.23,
                                        right: screenWidth / 42.35,
                                        top: screenHeight / 29.90),
                                    //left15 right10 top30
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        AutoSizeText('Curated by dietician',
                                          style: kB1BodyText,),
                                        AutoSizeText(
                                          'Today\'s meal plan',
                                          style: kBodyHeading1TextBoldBlack,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: planOpted.contains('Healthy'),
                              child: SizedBox(
                                height: Dimensions.height20,
                              ),
                            ),
                            Visibility(
                              visible: planOpted.contains('Healthy'),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>
                                          HealthyProfile()));
                                },
                                child: Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  height: screenHeight / 8.97,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF009688),
                                        Color(0xFF4CAF50),
                                        Color(0xFF8BC34A)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.width4),
                                    // image: DecorationImage(
                                    //   //colorFilter: kBlackColor,
                                    //   fit: BoxFit.scaleDown,
                                    //   alignment: FractionalOffset.topRight,
                                    //   image: AssetImage(
                                    //       'assets/images/Nutrimeal.png'),
                                    // ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenWidth / 28.23,
                                                top: screenHeight / 29.90),
                                            //left15 right10 top30
                                            child: AutoSizeText(
                                              'Answer few questions to',
                                              style: kB1BodyTextWhite,),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenWidth / 28.23),
                                            //left15 right10 top30
                                            child: AutoSizeText(
                                              'Setup your profile',
                                              style: kBodyHeading1TextBold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: screenWidth / 21.17,),
                                      //width20
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: screenWidth / 7.05 +
                                                screenWidth / 84.705,
                                            top: screenHeight / 44.86),
                                        //top20 left 65
                                        child: Icon(
                                          Icons.medication_liquid,
                                          size: 120,
                                          color: Colors.white.withOpacity(0.1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: planOpted.contains('Healthy'),
                              child: SizedBox(
                                height: Dimensions.height20,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                planOpted.contains('Healthy') ?
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DieticianDetails()));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        //color: Color(0xFFBDBD83),
                                        borderRadius: BorderRadius.circular(
                                            screenWidth / 105.88), //width4
                                        gradient: kPrimaryGradientColor,
                                      ),
                                      height: screenHeight / 8.97, //height100
                                      //width: Dimensions.width130,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenWidth / 28.23,
                                                right: screenWidth / 42.35,
                                                top: screenHeight / 29.90),
                                            //left15 right10 top30
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: [
                                                AutoSizeText(
                                                  'Connect with your',
                                                  style: kB1BodyTextWhite,),
                                                AutoSizeText(
                                                  'Dietician',
                                                  style: kBodyHeading1TextBold,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ) : Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Todays_menu()));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBDBD83),
                                        borderRadius: BorderRadius.circular(
                                            screenWidth / 105.88), //width4
                                        image: DecorationImage(
                                          fit: BoxFit.scaleDown,
                                          alignment: FractionalOffset.topRight,
                                          image: AssetImage(
                                              'assets/images/Homescreen Pizza.png'),
                                        ),
                                        gradient: kPrimaryGradientColor,
                                      ),
                                      height: screenHeight / 8.97, //height100
                                      //width: Dimensions.width130,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenWidth / 21.17,
                                                right: screenWidth / 21.17,
                                                top: screenHeight / 29.90),
                                            //width20 height30
                                            child: AutoSizeText(
                                              'Polling results for',
                                              style: kB1BodyTextWhite,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenWidth / 21.17,
                                                right: screenWidth / 42.35),
                                            //left20 right10
                                            child: AutoSizeText(
                                              '$currentDay',
                                              style: kBodyHeading1TextBold,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenWidth / 21.17,
                                                right: screenWidth / 42.35),
                                            //left20 rifht10
                                            child: Text(
                                              DateFormat.yMMMMd().format(date),
                                              style: kB1BodyTextWhite,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth / 42.35, //width10
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SingleOrderScreen()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.width4),
                                      image: DecorationImage(
                                        alignment: FractionalOffset.topRight,
                                        image: AssetImage(
                                          'assets/images/Dish (1).png',),
                                      ),
                                    ),
                                    height: screenHeight / 8.97, //height100
                                    width: screenWidth / 3.25, //widht130
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth / 28.23,
                                              right: screenWidth / 42.35,
                                              top: screenHeight / 29.90),
                                          //left15 right10 top3-
                                          child: AutoSizeText('Single Order ',
                                            style: kB1BodyText,),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth / 28.23,
                                              right: screenWidth / 42.35),
                                          //left15 rigth10
                                          child: AutoSizeText('Order Now',
                                            style: kBodyHeading1TextBoldBlack,),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth / 28.23,
                                              right: screenWidth / 42.35),
                                          //left15 rigth10
                                          child: AutoSizeText(
                                            'Get upto 50% off',
                                            style: kB1BodyText,),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenHeight / 44.86, //height20
                            ),
                            Visibility(
                              visible: (!isSingleOrder && !isSubscribed) ||
                                  (isSingleOrder && !isSubscribed),
                              child: Container(
                                height: screenHeight / 8.97, //height100
                                width: screenWidth,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          screenWidth / 105.88),
                                      topRight: Radius.circular(
                                          screenWidth / 105.88)),
                                  image: DecorationImage(
                                    //colorFilter: kBlackColor,
                                    fit: BoxFit.scaleDown,
                                    alignment: FractionalOffset.topRight,
                                    image: AssetImage(
                                        'assets/images/Nutrimeal.png'),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth / 28.23,
                                      right: screenWidth / 42.35,
                                      top: screenHeight / 29.90),
                                  //left15 right10 top3-
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      //SizedBox(height: 10,),
                                      AutoSizeText(
                                        'Grab delicious meal and get up to 25% off',
                                        style: kB1BodyText,),
                                      SizedBox(height: 2),
                                      AutoSizeText(
                                        'Subscribe to tiff plans',
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          //height: 5,
                                          color: kBlackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: (!isSingleOrder && !isSubscribed) ||
                                  (isSingleOrder && !isSubscribed),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Plan15Days()));
                                      },
                                      child: Container(
                                        width: screenWidth / 2,
                                        decoration: BoxDecoration(
                                          gradient: kPrimaryGradientColor,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(
                                                  screenWidth /
                                                      105.88)), //width4
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth / 21.17,
                                              right: screenWidth / 21.17,
                                              top: screenHeight / 44.86,
                                              bottom: screenHeight / 44.86),
                                          //height20 width20
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              AutoSizeText(
                                                '15 Days', style: TextStyle(
                                                fontFamily: 'OpenSans',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                //height: 5,
                                                color: kWhiteColor,
                                              ),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: screenHeight / 35.89, //height25
                                    width: screenWidth / 105.88 / 2, //width2
                                    //color: kDividerColor,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Plan30Days()));
                                      },
                                      child: Container(
                                        width: screenWidth / 2,
                                        decoration: BoxDecoration(
                                          gradient: kPrimaryGradientColor,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(
                                                  screenWidth /
                                                      105.88)), //width4
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth / 21.17,
                                              right: screenWidth / 21.17,
                                              top: screenHeight / 44.86,
                                              bottom: screenHeight / 44.86),
                                          //height20 width20
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              AutoSizeText(
                                                '30 Days', style: TextStyle(
                                                fontFamily: 'OpenSans',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                //height: 5,
                                                color: kWhiteColor,
                                              ),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: (!isSingleOrder && !isSubscribed) ||
                                  (isSingleOrder && !isSubscribed),
                              child: SizedBox(
                                height: screenHeight / 44.86, //height20
                              ),
                            ),
                            Visibility(
                              visible: isSubscribed &&
                                  !(planOpted.contains('Healthy')),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>
                                          PollingiveNowScreen()));
                                },
                                child: Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  height: screenHeight / 8.97,
                                  decoration: BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.width4),
                                    image: DecorationImage(
                                      //colorFilter: kBlackColor,
                                      fit: BoxFit.scaleDown,
                                      alignment: FractionalOffset.topRight,
                                      image: AssetImage(
                                          'assets/images/polling3.png'),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: screenWidth / 28.23,
                                        right: screenWidth / 42.35,
                                        top: screenHeight / 29.90),
                                    //left15 right10 top30
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        AutoSizeText('Polling opens for',
                                          style: kB1BodyText,),
                                        AutoSizeText(
                                          '$nextDay',
                                          style: kBodyHeading1TextBoldBlack,
                                        ),
                                        AutoSizeText(DateFormat.yMMMMd().format(
                                            DateTime.now().add(
                                                new Duration(days: 1))),
                                          style: kB1BodyText,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: isSubscribed &&
                                  !(planOpted.contains('Healthy')),
                              child: SizedBox(
                                height: screenHeight / 44.86, //height20
                              ),
                            ),

                            Visibility(
                              visible: isSubscribed || isSingleOrder,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            screenWidth / 105.88), //width4
                                        gradient: kPrimaryGradientColor,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      cancelService()));
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: screenWidth / 28.23,
                                                  right: screenWidth / 42.35,
                                                  top: screenHeight / 29.90),
                                              //left15 right10 top30
                                              child: AutoSizeText(
                                                'Cancel',
                                                style: kBodyHeading1TextBold,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: screenWidth / 28.23,
                                                  right: screenWidth / 42.35,
                                                  bottom: screenHeight / 89.72),
                                              //height10 right10 left20
                                              child: AutoSizeText(
                                                'For $nextDate',
                                                style: kB1BodyTextWhite,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth / 42.35, //width10
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: kWhiteColor,
                                        borderRadius: BorderRadius.circular(
                                            screenWidth / 105.88), //width4
                                      ),

                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Reschedule()));
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: screenWidth / 28.23,
                                                  right: screenWidth / 42.35,
                                                  top: screenHeight / 29.90),
                                              //left15 right10 top30
                                              child: AutoSizeText(
                                                'Reschedule',
                                                style: kBodyHeading1TextBoldBlack,
                                                //fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenWidth / 28.23,
                                                right: screenWidth / 42.35,
                                                bottom: screenHeight / 89.72),
                                            //height10 right10 left20
                                            child: AutoSizeText(
                                              'For $nextDate',
                                              style: kB1BodyText,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: isSubscribed || isSingleOrder,
                              child: SizedBox(
                                height: screenHeight / 44.86, //height20
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: kWhiteColor,
                                      borderRadius: BorderRadius.circular(
                                          screenWidth / 105.88), //width4
                                    ),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        PollingRecommendation()));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: screenWidth / 28.23,
                                                right: screenWidth / 42.35,
                                                top: screenHeight / 29.90),
                                            //left15 right10 top30
                                            child: AutoSizeText(
                                              'Recommend',
                                              style: kBodyHeading1TextBoldBlack,
                                              //fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth / 28.23,
                                              right: screenWidth / 42.35,
                                              bottom: screenHeight / 89.72),
                                          //height10 right10 left20
                                          child: AutoSizeText(
                                            'Let us know what you would like to add in tomorrow\'s poll',
                                            style: kB1BodyText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.width10,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.width4),
                                      gradient: kPrimaryGradientColor,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ReferralsScreen()));
                                      },
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenWidth / 28.23,
                                                right: screenWidth / 42.35,
                                                top: screenHeight / 29.90),
                                            //left15 right10 top30
                                            child: AutoSizeText(
                                              'Reward',
                                              style: kBodyHeading1TextBold,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenWidth / 28.23,
                                                right: screenWidth / 42.35,
                                                bottom: screenHeight / 89.72),
                                            //height10 right10 left20
                                            child: AutoSizeText(
                                              'Refer your friend and get 1 mealbox free',
                                              style: kB1BodyTextWhite,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}

