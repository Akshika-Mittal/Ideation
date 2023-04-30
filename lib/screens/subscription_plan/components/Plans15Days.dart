import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/gradientBorderDDefaultButton.dart';
import 'package:tiffin/widgets/subsPlanDetails.dart';

import '../../../utils/dimensions.dart';
import '../../../widgets/AppBarWidget.dart';
import '../../../widgets/screen_heading.dart';
import '../../order_details/order_details_screen.dart';

class Plan15Days extends StatefulWidget {
  static String routeName="/plan15Days";

  @override
  State<Plan15Days> createState() => _Plan15DaysState();
}

class _Plan15DaysState extends State<Plan15Days> {

  List<IconData> icons = [Icons.emoji_food_beverage_outlined];
  List<String> details=['Get hearty and appetizing food at your doorstep with us.'];

  updateText(int n){
    if(n==0){
      setState(() {
        details.clear();icons.clear();
        icons=[Icons.all_inbox_rounded,Icons.delivery_dining,Icons.calendar_view_month_rounded,Icons.fact_check,Icons.poll,Icons.backup_table_rounded];
        details=['6 meals in box','15 days delivery','Validity 20 days','Choose from pure veg/non veg','Polling enabled','Special meals on Saturday & Sunday'];
      });
    }
    else if(n==1){
      setState(() {
        details.clear();icons.clear();
        icons=[Icons.all_inbox_rounded,Icons.delivery_dining,Icons.calendar_view_month_rounded,Icons.fact_check,Icons.poll,Icons.backup_table_rounded];
        details=['6 meals in box','30 days delivery','Validity 20 days','Choose from pure veg/non veg','Polling enabled','Special meals on Saturday & Sunday'];
      });
    }
    else if(n==2){
      setState(() {
        details.clear();icons.clear();
        icons=[Icons.all_inbox_rounded,Icons.delivery_dining,Icons.calendar_view_month_rounded,Icons.fact_check,Icons.add_moderator_rounded,Icons.backup_table_rounded];
        details=['No of boxes depend on diet plan','25 days delivery','Validity 20 days','Choose from pure veg/non veg','Meal plan according to dietician','Special meals on Saturday & Sunday'];
      });
    }
    else if(n==3){
      setState(() {
        details.clear();icons.clear();
        icons=[Icons.all_inbox_rounded,Icons.delivery_dining,Icons.calendar_view_month_rounded,Icons.fact_check,Icons.add_moderator_rounded,Icons.backup_table_rounded];
        details=['No of boxes depend on diet plan','30 days delivery','Validity 20 days','Choose from pure veg/non veg','Meal plan according to dietician','Special meals on Saturday & Sunday'];
      });
    }
  }

  @override
  Widget build(BuildContext context)
  {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Subscription Plans')),
      body: SingleChildScrollView(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/28.23,top: screenHeight/44.86),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenHeight/2.99+screenHeight/11.21+screenHeight/29.90+screenHeight/89.72, //height410
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradientColor,
                    borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal:screenWidth/21.17 ,vertical: screenHeight/44.86), //height=weight20
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Introducing',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),

                        AutoSizeText(
                          '15 Days Subscription',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            color: kWhiteColor,
                          ),
                        ),
                        // AutoSizeText(
                        //   'Subscription',
                        //   style: TextStyle(
                        //     fontFamily: 'OpenSans',
                        //     fontSize: 15,
                        //     fontWeight: FontWeight.w600,
                        //     color: kWhiteColor,
                        //   ),
                        // ),
                        AutoSizeText(
                          'Starting at ₹199* per meal',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight/29.90, //height30
                        ),
                        SizedBox(
                          height: screenHeight/29.90, //height30
                        ),
                        SizedBox(
                          height: screenHeight/89.72, //height30
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children:[
                            Container(
                              height: screenHeight/8.97+screenHeight/8.97+screenHeight/29.90, //height230
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: screenWidth/84.705,vertical: screenHeight/109.90),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(details.length, (index) {
                                    return Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              decoration:BoxDecoration(
                                                  color: kLightGrey,
                                                  borderRadius: BorderRadius.circular(screenWidth/105.88) //width5
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(horizontal: screenWidth/105.88/2,vertical: screenHeight/897.254), //height4 width4
                                                child: Icon(
                                                  (icons[index]),
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: screenWidth/105.88,),
                                            Expanded(child: AutoSizeText(details[index],style: kH2Heading,)),
                                          ],
                                        ),
                                        Visibility(
                                          visible:index<5,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: screenWidth/84.705),
                                            child: Divider(),
                                          ),
                                        ),
                                        //SizedBox(height:screenHeight/224.31/2 ,), //height2
                                      ],

                                    );
                                  }),

                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:screenHeight/44.86 ,
                ),
                GestureDetector(
                  onTap: ()=>updateText(0),
                  child: Container(
                    height: screenHeight/7.47, //height120
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(screenWidth/84.705),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth/28.23,vertical:screenHeight/58.91 ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText(
                                'Bronze',
                                style: kBodyTextBoldBlackMedium,
                              ),
                              Text.rich(TextSpan(
                                children: <TextSpan>[
                                  new TextSpan(
                                    text: '₹ 5,985',
                                    style: new TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  new TextSpan(
                                    text: ' ₹ 4,485',
                                    style: kButtonTextGradient,
                                  ),
                                ],
                              ),
                              )
                            ],
                          ),
                          AutoSizeText(
                            '15 Tiff box',
                            style: kB1BodyText,
                          ),
                          AutoSizeText(
                            'Meal plan determined from polls',
                            style: kB1BodyText,
                          ),
                          BuyNowButton(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                GestureDetector(
                  onTap: ()=>updateText(1),
                  child: Container(
                    height: screenHeight/7.47, //height120
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(screenWidth/84.705),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth/28.23,vertical:screenHeight/58.91 ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText(
                                'Bronze Pro',
                                style: kBodyTextBoldBlackMedium,
                              ),
                              Text.rich(TextSpan(
                                children: <TextSpan>[
                                  new TextSpan(
                                    text: '₹ 10,470',
                                    style: new TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  new TextSpan(
                                    text: ' ₹ 8,970',
                                    style: kButtonTextGradient,
                                  ),
                                ],
                              ),
                              )
                            ],
                          ),
                          AutoSizeText(
                            '15 Tiff box',
                            style: kB1BodyText,
                          ),
                          AutoSizeText(
                            'Meal plan determined from polls',
                            style: kB1BodyText,
                          ),
                          BuyNowButton(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                GestureDetector(
                  onTap: ()=>updateText(2),
                  child: Container(
                    height: screenHeight/7.47, //height120
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(screenWidth/84.705),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth/28.23,vertical:screenHeight/58.91 ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText(
                                'Silver',
                                style: kBodyTextBoldBlackMedium,
                              ),
                              Text.rich(TextSpan(
                                children: <TextSpan>[
                                  new TextSpan(
                                    text: '₹ 7,485',
                                    style: new TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  new TextSpan(
                                      text: ' ₹ 5,985',
                                      style: kButtonTextGradient
                                  ),
                                ],
                              ),
                              )
                            ],
                          ),
                          AutoSizeText(
                            '15 Tiff box [Healthy Meal]',
                            style: kB1BodyText,
                          ),
                          AutoSizeText(
                            'Meal plan according to dietitian',
                            style: kB1BodyText,
                          ),
                          BuyNowButton(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                GestureDetector(
                  onTap: ()=>updateText(3),
                  child: Container(
                    height: screenHeight/7.47, //height120
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(screenWidth/84.705),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth/28.23,vertical:screenHeight/58.91 ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText(
                                'Silver Pro',
                                style: kBodyTextBoldBlackMedium,
                              ),
                              Text.rich(TextSpan(
                                children: <TextSpan>[
                                  new TextSpan(
                                    text: '₹ 13,470',
                                    style: new TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  new TextSpan(
                                    text: ' ₹ 11,970',
                                    style: kButtonTextGradient,
                                  ),
                                ],
                              ),
                              )
                            ],
                          ),
                          AutoSizeText(
                            '30 Tiff box [Healthy Meal]',
                            style: kB1BodyText,
                          ),
                          AutoSizeText(
                            'Meal plan according to dietitian',
                            style: kB1BodyText,
                          ),
                          BuyNowButton(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 9,left: 270), //top50 //left50
      child: Container(
        height: Dimensions.height30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenWidth/105.88), //width4
            gradient: kPrimaryGradientColor),
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => OrderDetailsScreen()));
          },
          child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:screenWidth/52.94 ,vertical:screenHeight/109.90 ), //height8 width8
                child: AutoSizeText('Add',style: kSmallButtonText,),
              )),
        ),
      ),
    );
  }
}


