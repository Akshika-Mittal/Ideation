import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';

import '../../../../utils/dimensions.dart';
import '../../../../widgets/AppBarWidget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Container(
            color: kLightGrey,
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight/44.86,bottom: screenHeight/44.86, left: screenWidth/21.17, right: screenWidth/21.17), //top100,left=right=20
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Polled Items',
                    style: kH1Heading,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  AutoSizeText("These are just your polled items, final menu will be decided based on majority",style:kH2Heading),
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
                    height: screenHeight/2.99-screenHeight/29.90-screenHeight/44.86-screenHeight/89.72-screenHeight/89.72-screenHeight/89.72, //height250
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
                                //Divider(),
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
                                //Divider(),
                              ],

                            ),
                          ),


                        ),
                      ],
                    ),
                  ),

                  Spacer(),
                  //Spacer(),
                  AutoSizeText('Note : These items are polled by you it may or may not be included in the next days menu.Item\'s with the maximum no polls will be delivered to you. Please check today\'s menu after 12am ',style: kB1BodyText,),
                  SizedBox(height: screenHeight/44.86,), //height20
                  DefaultButton(text: 'Continue', press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
                ],
              ),
            ),

          ),

        ),
    );
  }
}
class ResultDetails extends StatelessWidget {
  const ResultDetails({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.foodItem,
    required this.quantity,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String foodItem;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // SizedBox(width: screenWidth/21.17,), //width20
        AutoSizeText(
            foodItem,
            style: kB1BodyTextBlack
        ),
        AutoSizeText(
            quantity,
            style: kB1BodyTextBlack
        ),
      ],
    );
  }
}
