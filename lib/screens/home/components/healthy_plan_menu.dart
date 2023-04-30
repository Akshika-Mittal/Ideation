import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:progress_timeline/progress_timeline.dart';
import 'package:tiffin/utils/AppColors.dart';

import '../../../utils/constants.dart';
import '../../../widgets/AppBarWidget.dart';
import 'dietician_support.dart';

class HealthyPlanMenu extends StatefulWidget {
  const HealthyPlanMenu({Key? key}) : super(key: key);
  static String routeName ="\healthy_plan_menu";

  @override
  State<HealthyPlanMenu> createState() => _HealthyPlanMenuState();
}

class _HealthyPlanMenuState extends State<HealthyPlanMenu> {
  late ProgressTimeline progressTimeline;

  List<SingleState> states =[
    SingleState(stateTitle: 'Order Details'),
    SingleState(stateTitle: 'Delivery Location'),
    SingleState(stateTitle: 'Payment'),
  ];
  void initState(){
    super.initState();
    progressTimeline=ProgressTimeline(
      states: states,
      iconSize: 30,
      checkedIcon: Icon(Icons.check_circle_outline,color: kMainThemeColor,),
      connectorColor: kLightRedColor,
      //uncheckedIcon: Icon(Icons.account_circle,color: kMainThemeColor,),
      //currentIcon: Icon(Icons.),
    );
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kLightGrey,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(screenHeight/17.94),
            child: AppBarWidget(text:'')),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: kLightGrey,
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight/44.86, left: screenWidth/21.17, right: screenWidth/21.17), //top100,left=right=20
                child: Column(
                  children: [
                  AutoSizeText(
                  'Today\'s Menu',
                  style: kH1Heading,
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                AutoSizeText("Curated by dietician according to your profile",style:kB1BodyText),
                SizedBox(
                  height: screenHeight/44.86, //height20
                ),
                SizedBox(height: screenHeight/44.86,), //height20
                TabBar(
                    indicator: BoxDecoration(
                        gradient: kPrimaryGradientColor,
                        borderRadius: BorderRadius.circular(screenWidth/84.705) //radius5

                    ),
                    unselectedLabelColor: kBlackColor,
                    tabs: [
                      Tab(text:'Lunch',),
                      Tab(text:'Dinner',),
                    ]),
                SizedBox(height: screenHeight/44.86,), //height20
                SizedBox(
                  height: screenHeight/2.99-screenHeight/29.90, //height250
                  child: TabBarView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)),//width5
                          color: kWhiteColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: screenHeight/89.725,bottom: screenHeight/89.725,left: screenWidth/42.352,right: screenWidth/42.352), //height=width=10
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Meal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('Quantity',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Mixed Vegetable Curry",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('1 Serving',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Brown Rice",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('1 Serving',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Spinach Salad",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('1 Serving',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Paneer Salad",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('1 Serving',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Masoor Dal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('1 Serving',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Roti",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('3',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],

                          ),
                        ),


                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)),
                          color: kWhiteColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: screenHeight/89.725,bottom: screenHeight/89.725,left: screenWidth/42.352,right: screenWidth/42.352), //height=width=10
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Meal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('Quantity',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Mixed Vegetable Curry",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('1 Serving',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Brown Rice",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('1 Serving',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Spinach Salad",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('1 Serving',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Paneer Salad",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('1 Serving',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Masoor Dal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('1 Serving',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "Roti",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff2d2d2d)),
                                  ),
                                  AutoSizeText('3',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,

                                        color: Colors.grey),
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
                SizedBox(height: screenHeight/44.86,), //height20
                   // progressTimeline,
                    Container(
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(screenWidth/42.35), //widgh10
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: screenWidth/42.35,right: screenWidth/42.35,), //width20 height5
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: kLightGrey,
                                    borderRadius: BorderRadius.circular(screenWidth/105.88), //width5
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left:screenWidth/105.88,right:screenWidth/105.88,top:screenHeight/224.31,bottom:screenHeight/224.31),
                                    child: Icon(Icons.pin_drop_outlined,size: 20,),
                                  ),
                                ),
                                SizedBox(width: screenWidth/21.17,), //width20
                                AutoSizeText('304/104/Dariyanad',style: kB1BodyText,),
                              ],
                            ),
                            TextButton(child:AutoSizeText('Change',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.redAccent,fontFamily: 'OpenSans')),onPressed: (){},),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight/44.86,), //height20

                ],
              ),
            ),
            ),
          ),
        ),
      ),
    );
  }
}
