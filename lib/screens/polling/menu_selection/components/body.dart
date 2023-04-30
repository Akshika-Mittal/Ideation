import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
// import 'package:polls/polls.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/screens/subscription_plan/components/Plans15Days.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

import '../../../../utils/constants.dart';
import '../../../polling_accepted/polling_accepted_screen.dart';
import 'createPolls.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> pollingFoodCategory = [
    '1st Main Course',
    '2nd Main Course',
    'Rice',
    'Dal',
    'Roti',
    'Desert'
  ];
  List<String> pollingMC1Option = [
    'Chicken Tikka Masala',
    'Chicken Curry',
    'Muglai Chicken',
    'White Butter Chicken'
  ];
  List<String> pollingMC2Option = [
    'Kadai Chicken',
    'Dry Chicken Roast',
    'Chicken Sukha',
    'Chicken Masala Dry'
  ];
  List<String> pollingDalOption = [
    'Dal Tadka',
    'Dal Makhani',
    'Palak Dal',
    'Masoor Dal'
  ];
  List<int> pollNumber = [36, 52, 90, 22];

  List<String> pollingRiceOption = [
    'Biryani',
    'Hyderabadi Biryani',
    'Prawn Dum Biryani',
    'Chicken Fried Rice'
  ];
  List<String> pollingRotiOption = [
    'Tandoori Roti',
    'Laccha Paratha',
    'Naan',
    'Plain Roti'
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kLightGrey,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight/44.86, left: screenWidth/21.17, right: screenWidth/21.17), //left=right=20 top=20
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Polling is live',
                  style: kH1Heading,
                ),
                SizedBox(
                  height : screenHeight/89.72,
                ),
                AutoSizeText(
                  'Vote for your favorite item in the poll and the most popular choice will be delivered to you.',
                  style: kH2Heading,
                ),
                SizedBox(
                  height: screenHeight/22.43, //height40
                ),
                TabBar(
                    indicator: BoxDecoration(
                        gradient: kPrimaryGradientColor,
                        borderRadius: BorderRadius.circular(screenWidth/84.705)),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Vegetarian',
                      ),
                      Tab(
                        text: 'Non Vegetarian',
                      ),
                    ]),
                SizedBox(
                  height: screenHeight/44.86, //height20
                ),
                SizedBox(
                  height:430*5, //Make it responsive according to the elements added (Phaley waala ka poora height ka data lelo usmein 40 aur add kardo then multiply the list of elements with it (*index))
                  child: TabBarView(children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)),
                        color: kWhiteColor,
                      ),

                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth/84.705)),
                                        color: kLightGrey,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                        child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                                  colors: [
                                                    Color(0xFF8639B1),
                                                    Color(0xFFEB2133),
                                                    Color(0xFFFD9E41)
                                                  ],
                                                ).createShader(bounds),
                                            child: Icon(
                                              Icons.food_bank_sharp,
                                              color: kWhiteColor,
                                              size: 30,
                                            )),
                                      )),
                                  SizedBox(
                                    width: screenWidth/84.705,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        pollingFoodCategory[3],
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: kBlackColor),
                                      ),
                                      AutoSizeText(
                                          'Filled with richness of protein and tadka'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              Divider(),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              SizedBox(
                                height: screenHeight/2.99+screenHeight/44.86, //height320
                                child: ListView.builder(
                                  physics:NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount: pollingDalOption.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth/84.705)),
                                              color: kLightGrey,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                                  child: AutoSizeText(
                                                    pollingDalOption[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: screenWidth/42.35),
                                                  child: Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                        LinearPercentIndicator(
                                                          lineHeight : screenHeight/89.72,
                                                          percent: (pollNumber[
                                                          index] /
                                                              200)
                                                              .toDouble(),
                                                          barRadius:
                                                          Radius.circular(screenWidth/84.705),
                                                          backgroundColor: kWhiteColor,
                                                          linearGradient:
                                                          LinearGradient(
                                                            colors: [
                                                              Color(0xFF8639B1),
                                                              Color(0xFFEB2133),
                                                              Color(0xFFFD9E41)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      AutoSizeText((pollNumber[index] /
                                                          200 *
                                                          100)
                                                          .toString() +
                                                          '%')
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height : screenHeight/89.72,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height : screenHeight/89.72,
                                          )
                                        ],
                                      );
                                    }),
                              ),


                             // another
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth/84.705)),
                                        color: kLightGrey,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                        child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                                  colors: [
                                                    Color(0xFF8639B1),
                                                    Color(0xFFEB2133),
                                                    Color(0xFFFD9E41)
                                                  ],
                                                ).createShader(bounds),
                                            child: Icon(
                                              Icons.food_bank_sharp,
                                              color: kWhiteColor,
                                              size: 30,
                                            )),
                                      )),
                                  SizedBox(
                                    width: screenWidth/84.705,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        pollingFoodCategory[0],
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: kBlackColor),
                                      ),
                                      AutoSizeText(
                                          'What about some paneer...'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              Divider(),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              SizedBox(
                                height: screenHeight/2.99+screenHeight/44.86, //height320
                                child: ListView.builder(
                                    physics:NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount: pollingMC1Option.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            //height:300,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth/84.705)),
                                              color: kLightGrey,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                                  child: AutoSizeText(
                                                    pollingMC1Option[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: screenWidth/42.35),
                                                  child: Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                        LinearPercentIndicator(
                                                          lineHeight : screenHeight/89.72,
                                                          percent: (pollNumber[
                                                          index] /
                                                              200)
                                                              .toDouble(),
                                                          barRadius:
                                                          Radius.circular(screenWidth/84.705),
                                                          backgroundColor: kWhiteColor,
                                                          linearGradient:
                                                          LinearGradient(
                                                            colors: [
                                                              Color(0xFF8639B1),
                                                              Color(0xFFEB2133),
                                                              Color(0xFFFD9E41)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      AutoSizeText((pollNumber[index] /
                                                          200 *
                                                          100)
                                                          .toString() +
                                                          '%')
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height : screenHeight/89.72,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height : screenHeight/89.72,
                                          )
                                        ],
                                      );
                                    }),
                              ),



                              // another
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth/84.705)),
                                        color: kLightGrey,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                        child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                                  colors: [
                                                    Color(0xFF8639B1),
                                                    Color(0xFFEB2133),
                                                    Color(0xFFFD9E41)
                                                  ],
                                                ).createShader(bounds),
                                            child: Icon(
                                              Icons.food_bank_sharp,
                                              color: kWhiteColor,
                                              size: 30,
                                            )),
                                      )),
                                  SizedBox(
                                    width: screenWidth/84.705,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        pollingFoodCategory[1],
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: kBlackColor),
                                      ),
                                      AutoSizeText(
                                          'What about some other dish...'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              Divider(),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              SizedBox(
                                height: screenHeight/2.99+screenHeight/44.86, //height320
                                child: ListView.builder(
                                    physics:NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount: pollingMC2Option.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            //height:300,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth/84.705)),
                                              color: kLightGrey,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                                  child: AutoSizeText(
                                                    pollingMC2Option[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: screenWidth/42.35),
                                                  child: Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                        LinearPercentIndicator(
                                                          lineHeight : screenHeight/89.72,
                                                          percent: (pollNumber[
                                                          index] /
                                                              200)
                                                              .toDouble(),
                                                          barRadius:
                                                          Radius.circular(screenWidth/84.705),
                                                          backgroundColor: kWhiteColor,
                                                          linearGradient:
                                                          LinearGradient(
                                                            colors: [
                                                              Color(0xFF8639B1),
                                                              Color(0xFFEB2133),
                                                              Color(0xFFFD9E41)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      AutoSizeText((pollNumber[index] /
                                                          200 *
                                                          100)
                                                          .toString() +
                                                          '%')
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height : screenHeight/89.72,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height : screenHeight/89.72,
                                          )
                                        ],
                                      );
                                    }),
                              ),


                              // another
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth/84.705)),
                                        color: kLightGrey,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                        child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                                  colors: [
                                                    Color(0xFF8639B1),
                                                    Color(0xFFEB2133),
                                                    Color(0xFFFD9E41)
                                                  ],
                                                ).createShader(bounds),
                                            child: Icon(
                                              Icons.food_bank_sharp,
                                              color: kWhiteColor,
                                              size: 30,
                                            )),
                                      )),
                                  SizedBox(
                                    width: screenWidth/84.705,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        pollingFoodCategory[2],
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: kBlackColor),
                                      ),
                                      AutoSizeText(
                                          'Let\'s have some chawal..'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              Divider(),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              SizedBox(
                                height: screenHeight/2.99+screenHeight/44.86, //height320
                                child: ListView.builder(
                                    physics:NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount: pollingRiceOption.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            //height:300,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth/84.705)),
                                              color: kLightGrey,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                                  child: AutoSizeText(
                                                    pollingRiceOption[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: screenWidth/42.35),
                                                  child: Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                        LinearPercentIndicator(
                                                          lineHeight : screenHeight/89.72,
                                                          percent: (pollNumber[
                                                          index] /
                                                              200)
                                                              .toDouble(),
                                                          barRadius:
                                                          Radius.circular(screenWidth/84.705),
                                                          backgroundColor: kWhiteColor,
                                                          linearGradient:
                                                          LinearGradient(
                                                            colors: [
                                                              Color(0xFF8639B1),
                                                              Color(0xFFEB2133),
                                                              Color(0xFFFD9E41)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      AutoSizeText((pollNumber[index] /
                                                          200 *
                                                          100)
                                                          .toString() +
                                                          '%')
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height : screenHeight/89.72,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height : screenHeight/89.72,
                                          )
                                        ],
                                      );
                                    }),
                              ),



                              // another
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth/84.705)),
                                        color: kLightGrey,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                        child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                                  colors: [
                                                    Color(0xFF8639B1),
                                                    Color(0xFFEB2133),
                                                    Color(0xFFFD9E41)
                                                  ],
                                                ).createShader(bounds),
                                            child: Icon(
                                              Icons.food_bank_sharp,
                                              color: kWhiteColor,
                                              size: 30,
                                            )),
                                      )),
                                  SizedBox(
                                    width: screenWidth/84.705,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        pollingFoodCategory[4],
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: kBlackColor),
                                      ),
                                      AutoSizeText(
                                          'Rotiyaa..'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              Divider(),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              SizedBox(
                                height: screenHeight/2.99+screenHeight/44.86, //height320
                                child: ListView.builder(
                                    physics:NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount: pollingRotiOption.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            //height:300,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth/84.705)),
                                              color: kLightGrey,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                                  child: AutoSizeText(
                                                    pollingRotiOption[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: screenWidth/42.35),
                                                  child: Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                        LinearPercentIndicator(
                                                          lineHeight : screenHeight/89.72,
                                                          percent: (pollNumber[
                                                          index] /
                                                              200)
                                                              .toDouble(),
                                                          barRadius:
                                                          Radius.circular(screenWidth/84.705),
                                                          backgroundColor: kWhiteColor,
                                                          linearGradient:
                                                          LinearGradient(
                                                            colors: [
                                                              Color(0xFF8639B1),
                                                              Color(0xFFEB2133),
                                                              Color(0xFFFD9E41)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      AutoSizeText((pollNumber[index] /
                                                          200 *
                                                          100)
                                                          .toString() +
                                                          '%')
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height : screenHeight/89.72,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height : screenHeight/89.72,
                                          )
                                        ],
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)),
                        color: kWhiteColor,
                      ),

                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth/84.705)),
                                        color: kLightGrey,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                        child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                                  colors: [
                                                    Color(0xFF8639B1),
                                                    Color(0xFFEB2133),
                                                    Color(0xFFFD9E41)
                                                  ],
                                                ).createShader(bounds),
                                            child: Icon(
                                              Icons.food_bank_sharp,
                                              color: kWhiteColor,
                                              size: 30,
                                            )),
                                      )),
                                  SizedBox(
                                    width: screenWidth/84.705,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        pollingFoodCategory[3],
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: kBlackColor),
                                      ),
                                      AutoSizeText(
                                          'Filled with richness of protein and tadka'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              Divider(),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              SizedBox(
                                height: screenHeight/2.99+screenHeight/44.86, //height320
                                child: ListView.builder(
                                    physics:NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount: pollingDalOption.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth/84.705)),
                                              color: kLightGrey,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                                  child: AutoSizeText(
                                                    pollingDalOption[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: screenWidth/42.35),
                                                  child: Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                        LinearPercentIndicator(
                                                          lineHeight : screenHeight/89.72,
                                                          percent: (pollNumber[
                                                          index] /
                                                              200)
                                                              .toDouble(),
                                                          barRadius:
                                                          Radius.circular(screenWidth/84.705),
                                                          backgroundColor: kWhiteColor,
                                                          linearGradient:
                                                          LinearGradient(
                                                            colors: [
                                                              Color(0xFF8639B1),
                                                              Color(0xFFEB2133),
                                                              Color(0xFFFD9E41)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      AutoSizeText((pollNumber[index] /
                                                          200 *
                                                          100)
                                                          .toString() +
                                                          '%')
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height : screenHeight/89.72,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height : screenHeight/89.72,
                                          )
                                        ],
                                      );
                                    }),
                              ),


                              // another
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth/84.705)),
                                        color: kLightGrey,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                        child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                                  colors: [
                                                    Color(0xFF8639B1),
                                                    Color(0xFFEB2133),
                                                    Color(0xFFFD9E41)
                                                  ],
                                                ).createShader(bounds),
                                            child: Icon(
                                              Icons.food_bank_sharp,
                                              color: kWhiteColor,
                                              size: 30,
                                            )),
                                      )),
                                  SizedBox(
                                    width: screenWidth/84.705,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        pollingFoodCategory[0],
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: kBlackColor),
                                      ),
                                      AutoSizeText(
                                          'What about some paneer...'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              Divider(),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              SizedBox(
                                height: screenHeight/2.99+screenHeight/44.86, //height320
                                child: ListView.builder(
                                    physics:NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount: pollingMC1Option.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            //height:300,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth/84.705)),
                                              color: kLightGrey,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                                  child: AutoSizeText(
                                                    pollingMC1Option[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: screenWidth/42.35),
                                                  child: Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                        LinearPercentIndicator(
                                                          lineHeight : screenHeight/89.72,
                                                          percent: (pollNumber[
                                                          index] /
                                                              200)
                                                              .toDouble(),
                                                          barRadius:
                                                          Radius.circular(screenWidth/84.705),
                                                          backgroundColor: kWhiteColor,
                                                          linearGradient:
                                                          LinearGradient(
                                                            colors: [
                                                              Color(0xFF8639B1),
                                                              Color(0xFFEB2133),
                                                              Color(0xFFFD9E41)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      AutoSizeText((pollNumber[index] /
                                                          200 *
                                                          100)
                                                          .toString() +
                                                          '%')
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height : screenHeight/89.72,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height : screenHeight/89.72,
                                          )
                                        ],
                                      );
                                    }),
                              ),



                              // another
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth/84.705)),
                                        color: kLightGrey,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                        child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                                  colors: [
                                                    Color(0xFF8639B1),
                                                    Color(0xFFEB2133),
                                                    Color(0xFFFD9E41)
                                                  ],
                                                ).createShader(bounds),
                                            child: Icon(
                                              Icons.food_bank_sharp,
                                              color: kWhiteColor,
                                              size: 30,
                                            )),
                                      )),
                                  SizedBox(
                                    width: screenWidth/84.705,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        pollingFoodCategory[1],
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: kBlackColor),
                                      ),
                                      AutoSizeText(
                                          'What about some other dish...'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              Divider(),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              SizedBox(
                                height: screenHeight/2.99+screenHeight/44.86, //height320
                                child: ListView.builder(
                                    physics:NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount: pollingMC2Option.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            //height:300,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth/84.705)),
                                              color: kLightGrey,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                                  child: AutoSizeText(
                                                    pollingMC2Option[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: screenWidth/42.35),
                                                  child: Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                        LinearPercentIndicator(
                                                          lineHeight : screenHeight/89.72,
                                                          percent: (pollNumber[
                                                          index] /
                                                              200)
                                                              .toDouble(),
                                                          barRadius:
                                                          Radius.circular(screenWidth/84.705),
                                                          backgroundColor: kWhiteColor,
                                                          linearGradient:
                                                          LinearGradient(
                                                            colors: [
                                                              Color(0xFF8639B1),
                                                              Color(0xFFEB2133),
                                                              Color(0xFFFD9E41)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      AutoSizeText((pollNumber[index] /
                                                          200 *
                                                          100)
                                                          .toString() +
                                                          '%')
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height : screenHeight/89.72,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height : screenHeight/89.72,
                                          )
                                        ],
                                      );
                                    }),
                              ),


                              // another
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth/84.705)),
                                        color: kLightGrey,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                        child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                                  colors: [
                                                    Color(0xFF8639B1),
                                                    Color(0xFFEB2133),
                                                    Color(0xFFFD9E41)
                                                  ],
                                                ).createShader(bounds),
                                            child: Icon(
                                              Icons.food_bank_sharp,
                                              color: kWhiteColor,
                                              size: 30,
                                            )),
                                      )),
                                  SizedBox(
                                    width: screenWidth/84.705,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        pollingFoodCategory[2],
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: kBlackColor),
                                      ),
                                      AutoSizeText(
                                          'Let\'s have some chawal..'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              Divider(),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              SizedBox(
                                height: screenHeight/2.99+screenHeight/44.86, //height320
                                child: ListView.builder(
                                    physics:NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount: pollingRiceOption.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            //height:300,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth/84.705)),
                                              color: kLightGrey,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                                  child: AutoSizeText(
                                                    pollingRiceOption[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: screenWidth/42.35),
                                                  child: Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                        LinearPercentIndicator(
                                                          lineHeight : screenHeight/89.72,
                                                          percent: (pollNumber[
                                                          index] /
                                                              200)
                                                              .toDouble(),
                                                          barRadius:
                                                          Radius.circular(screenWidth/84.705),
                                                          backgroundColor: kWhiteColor,
                                                          linearGradient:
                                                          LinearGradient(
                                                            colors: [
                                                              Color(0xFF8639B1),
                                                              Color(0xFFEB2133),
                                                              Color(0xFFFD9E41)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      AutoSizeText((pollNumber[index] /
                                                          200 *
                                                          100)
                                                          .toString() +
                                                          '%')
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height : screenHeight/89.72,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height : screenHeight/89.72,
                                          )
                                        ],
                                      );
                                    }),
                              ),



                              // another
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth/84.705)),
                                        color: kLightGrey,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                        child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                                  colors: [
                                                    Color(0xFF8639B1),
                                                    Color(0xFFEB2133),
                                                    Color(0xFFFD9E41)
                                                  ],
                                                ).createShader(bounds),
                                            child: Icon(
                                              Icons.food_bank_sharp,
                                              color: kWhiteColor,
                                              size: 30,
                                            )),
                                      )),
                                  SizedBox(
                                    width: screenWidth/84.705,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        pollingFoodCategory[4],
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 30,
                                            color: kBlackColor),
                                      ),
                                      AutoSizeText(
                                          'Rotiyaa..'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              Divider(),
                              SizedBox(
                                height : screenHeight/179.451,
                              ),
                              SizedBox(
                                height: screenHeight/2.99+screenHeight/44.86, //height320
                                child: ListView.builder(
                                    physics:NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount: pollingRotiOption.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Container(
                                            //height:300,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth/84.705)),
                                              color: kLightGrey,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35 , vertical:screenHeight/89.72 ), //height10 width10
                                                  child: AutoSizeText(
                                                    pollingRotiOption[index],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w500),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: screenWidth/42.35),
                                                  child: Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child:
                                                        LinearPercentIndicator(
                                                          lineHeight : screenHeight/89.72,
                                                          percent: (pollNumber[
                                                          index] /
                                                              200)
                                                              .toDouble(),
                                                          barRadius:
                                                          Radius.circular(screenWidth/84.705),
                                                          backgroundColor: kWhiteColor,
                                                          linearGradient:
                                                          LinearGradient(
                                                            colors: [
                                                              Color(0xFF8639B1),
                                                              Color(0xFFEB2133),
                                                              Color(0xFFFD9E41)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      AutoSizeText((pollNumber[index] /
                                                          200 *
                                                          100)
                                                          .toString() +
                                                          '%')
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height : screenHeight/89.72,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height : screenHeight/89.72,
                                          )
                                        ],
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 20,
                    //   child: ListView.builder(
                    //       itemCount: 6,
                    //       itemBuilder: (context, index) {
                    //         return Column(
                    //           children: [
                    //             Container(
                    //               height: 50,
                    //               child: Text(pollingFoodCategory[index],style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700),),
                    //             ),
                    //             ListView.builder(
                    //                 itemCount: 4,
                    //                 shrinkWrap: true, // 1st add
                    //                // physics: ClampingScrollPhysics(), //
                    //                 itemBuilder: (context, index) {
                    //                   return Column(
                    //                     children: [
                    //                       Container(
                    //                         height: 50,
                    //                         child: Text(pollingDalOption[index]),
                    //                       ),
                    //                     ],
                    //                   );
                    //                 }),
                    //           ],
                    //         );
                    //       }),
                    // )
                  ]),
                ),
               SizedBox(
                 height: screenHeight/14.95, //height60
               ),
                DefaultButton(text: 'Continue', press: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PollingAcceptedScreen()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
