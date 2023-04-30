import 'package:auto_size_text/auto_size_text.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';

import '../utils/dimensions.dart';
import '../widgets/screen_heading.dart';

class Todays_menu extends StatefulWidget {
  const Todays_menu({Key? key}) : super(key: key);

  @override
  State<Todays_menu> createState() => _Todays_menuState();
}

class _Todays_menuState extends State<Todays_menu> {
  @override
  DateTime dateTime = DateTime.now();

  int days = 10;
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kLightGrey,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(screenHeight/17.94),
            child: AppBarWidget(text:'')),
        body: SafeArea(
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
                // AutoSizeText("Curated by dietician according to your profile",style:kB1BodyText),
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
                  ],
                                      ),
                                    ),

                                ),


                      ),
                  bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
        ),
    );


  }
}

