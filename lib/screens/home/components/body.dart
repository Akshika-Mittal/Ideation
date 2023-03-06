//import 'dart:html';
import 'package:date_picker_timeline/extra/dimen.dart';
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
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/feedback/components/body.dart';

int totaldelivery = 10;

class HomeBody extends StatelessWidget {
  int _processIndex = 2; //Timeline
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
  bool isSubscribed=false; //change value if subscription is running for user
  final int deliveryStatusCode = 5;
  final _controller = OrderStatusHomeScreenControl();
  int numberOfDaysLeft = 30 - 10; //use totaldelivery while deploying
  DateTime date = DateTime.now();
  String nextDate =
  DateFormat.yMMMMd().format(DateTime.now().add(new Duration(days: 1)));
  String currentDay = DateFormat('EEEE').format(DateTime.now());
  String nextDay =
  DateFormat('EEEE').format(DateTime.now().add(new Duration(days: 1)));
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFFF2F2F2),
        child: Padding(
          padding: EdgeInsets.all(Dimensions.width20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.width4),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Dimensions.width135,
                            height: Dimensions.height135,
                            child: Padding(
                              padding: EdgeInsets.all(Dimensions.width15),
                              child: SfRadialGauge(axes: <RadialAxis>[
                                RadialAxis(
                                    minimum: 0,
                                    maximum: 30,
                                    showLabels: false,
                                    showTicks: false,
                                    axisLineStyle: AxisLineStyle(
                                      thickness: 0.2,
                                      cornerStyle: CornerStyle.bothCurve,
                                      color: Colors.black12,
                                      thicknessUnit: GaugeSizeUnit.factor,
                                    ),
                                    pointers: <GaugePointer>[
                                      RangePointer(
                                        value: totaldelivery.toDouble(),
                                        cornerStyle: CornerStyle.bothCurve,
                                        width: 0.2,
                                        sizeUnit: GaugeSizeUnit.factor,
                                        color:   kBlackColor,
                                      ),
                                    ],
                                    annotations: <GaugeAnnotation>[
                                      GaugeAnnotation(
                                          positionFactor: 0.1,
                                          angle: 90,
                                          widget: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            //crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                // crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 20, 0, 0),
                                                    child: SubHeadingText(
                                                      text: totaldelivery.toStringAsFixed(0),
                                                      size: Dimensions.font26,
                                                      color: kBlackColor,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 25, 0, 0),
                                                    child: SubHeadingText(
                                                      text:'/30',
                                                      size: Dimensions.font14,
                                                      color: Colors.black45,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SubHeadingText(
                                                text: 'Order',
                                                size: Dimensions.font14,
                                                color: Colors.black26,
                                              ),
                                            ],
                                          ))
                                    ])
                              ]),
                            ),
                          ),
                          Container(
                            width: Dimensions.width4/2,
                            height: Dimensions.height130,
                            color: Colors.black12,
                          ),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          isSubscribed? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadingText(
                                text: 'Hi Akshika',
                                color: Colors.black,
                                size: Dimensions.font20,
                              ),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              Text('Plan Subscribed: Gold Pro ',style: TextStyle(fontSize: 12,color: Colors.black45)),
                              Text('Lunch : 6 delivered',style: TextStyle(fontSize: 12,color: Colors.black45)),
                              Text('Dinner : 4 delivered',style: TextStyle(fontSize: 12,color: Colors.black45)),
                              Text('Start Day : 01/02/2023',style: TextStyle(fontSize: 12,color: Colors.black45)),
                              Text('End Day: 15/03/2023',style: TextStyle(fontSize: 12,color: Colors.black45)),
                            ],
                          ) : Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingText(
                                  text: 'Hi Akshika',
                                  color: Colors.black,
                                  size: Dimensions.font20,
                                ),
                                SizedBox(
                                  height: Dimensions.height10,),
                                SubHeadingText(
                                    text: 'You are not subsribed to any tiff plan.',
                                    size: Dimensions.font12,
                                    color: Colors.black45),
                                SizedBox(height: Dimensions.height20,),
                                Container(
                                  height: Dimensions.height30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.width4),
                                      color: kBlackColor),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => SubscriptionPlanScreen()));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(Dimensions.width8),
                                      child: SubHeadingText(text:'Subscribe Now',color: Colors.white,size: Dimensions.font12,),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.width4),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: Dimensions.width20,top:Dimensions.height10, right: Dimensions.width10),
                      child: HeadingText(text:"Your order is ${deliverStatus()}" ,size: Dimensions.font17, //fontWeight: FontWeight.w700,
                        color: kBlackColor, ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width10),
                      child: SubHeadingText(text:"Lunch: Arriving in 45 mins" ,size: Dimensions.font12,color: Colors.black45, ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Dimensions.width10, top: Dimensions.height10,right: Dimensions.width10,bottom: Dimensions.height20),
                      child: LinearPercentIndicator(
                        //fillColor: kBlackColor,
                        //backgroundColor: kBlackColor,
                        progressColor: kBlackColor,
                        lineHeight: 10,
                        percent: (deliveryStatusCode * 2) / 10,
                        barRadius: Radius.circular(Dimensions.width4),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: Dimensions.height20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Todays_menu()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFBDBD83),
                            borderRadius: BorderRadius.circular(Dimensions.width4),
                            image: DecorationImage(
                              fit: BoxFit.scaleDown,
                              alignment: FractionalOffset.topRight,
                              image: AssetImage(
                                  'assets/images/Homescreen Pizza.png'),
                            ),
                            //height: Dimensions.height100,
                            //width: Dimensions.width130,
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                stops: [
                                  0.45,
                                  0.95,
                                ],
                                colors: <Color>[
                                  Color(0xFF004D40),
                                  Color(0xFF26A69A),
                                ]),
                          ),
                          height: Dimensions.height100,
                          //width: Dimensions.width130,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 0, 0),
                                child: SubHeadingText(
                                  text:'Polling results for',
                                  color: kWhiteColor,
                                  //fontWeight: FontWeight.w600,
                                  size: Dimensions.font12,
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: HeadingText(
                                  text:'$currentDay',
                                  //size: 24,
                                  //fontWeight: FontWeight.w600,
                                  color: kWhiteColor,
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: SubHeadingText(
                                  text:'Lunch and Dinner',
                                  color: kWhiteColor,
                                  //fontWeight: FontWeight.w600,
                                  size: Dimensions.font12,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 0, 20),
                                child: SubHeadingText(
                                  text:DateFormat.yMMMMd().format(date),
                                  color: kWhiteColor,
                                  //fontWeight: FontWeight.w600,
                                  size: Dimensions.font12,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SingleOrderScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.width8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(Dimensions.width4),
                          image: DecorationImage(
                            alignment: FractionalOffset.topRight,
                            image: AssetImage(
                              'assets/images/Dish (1).png',),
                          ),
                        ),

                        height: Dimensions.height100,
                        width: Dimensions.width130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: Dimensions.width10,top: Dimensions.height40),
                                child: SubHeadingText(text:'Single Order ',size: Dimensions.font12,)
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Dimensions.width10),
                              child: HeadingText(text:'Order Now',size: Dimensions.font17,color: kBlackColor,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: Dimensions.width10, ),
                              child: SubHeadingText(text:'Get upto 50% off',size: Dimensions.font12,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MainCourseOne()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(Dimensions.width4),
                    image: DecorationImage(
                      //colorFilter: kBlackColor,
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset.topRight,
                      image: AssetImage(
                          'assets/images/Homescreen Polling Black.png'),
                    ),
                    // gradient: LinearGradient(
                    //     begin: Alignment.topLeft,
                    //     end: Alignment.bottomLeft,
                    //     colors: <Color>[
                    //       Color(0xFFFFFFFF),
                    //       Color(0xFF9B9B9B),
                    //     ]),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        SubHeadingText(text: 'Polling opens for', size: Dimensions.font12,),
                        HeadingText(
                          text: '$nextDay',
                          size: Dimensions.font20,
                        ),
                        SubHeadingText(text: 'Lunch and Dinner',size: Dimensions.font12),
                        SubHeadingText(text: DateFormat.yMMMMd().format(DateTime.now().add(new Duration(days: 1))),size: Dimensions.font12),
                        SubHeadingText(text: 'Closes at 12:00 pm today',size: Dimensions.font12),
                        SizedBox(
                          height: Dimensions.height20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          //color: Color(0xFFEB4749),
                          borderRadius: BorderRadius.circular(Dimensions.width4),
                          // image: DecorationImage(
                          //   fit: BoxFit.scaleDown,
                          //   alignment: FractionalOffset.topRight,
                          //   image: AssetImage(
                          //       'assets/images/Lunch DashboardImage.png'),
                          // ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              stops: [
                                0.45,
                                0.95,
                              ],
                              colors: <Color>[
                                Color(0xFF004D40),
                                Color(0xFF26A69A),
                              ]),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => cancelService()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10, 40, 0, 0),
                                child: HeadingText(
                                  text:'Cancel',
                                  color: kWhiteColor,
                                  //fontSize: 24,
                                  //fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 0, 20),
                                child: SubHeadingText(
                                  text:'For $nextDate',
                                  color: kWhiteColor,
                                  size: Dimensions.font12,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),

                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(Dimensions.width4),
                          // image: DecorationImage(
                          //   fit: BoxFit.scaleDown,
                          //   alignment: FractionalOffset.topRight,
                          //   image: AssetImage(
                          //       'assets/images/Lunch DashboardImage.png'),
                          // ),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Reschedule()));
                              },
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 40, 0, 0),
                                child: HeadingText(
                                  text:'Reschedule',
                                  size: Dimensions.font26,
                                  //fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 20),
                              child: SubHeadingText(
                                text:'For $nextDate',size: Dimensions.font12,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

