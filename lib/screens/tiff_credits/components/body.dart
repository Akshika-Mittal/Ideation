import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/divider_widget.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: kLightGrey,
      child: Padding(
        padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72), //left=right=20 top=10
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: screenHeight/8.97+screenHeight/8.97, //height200
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: kPrimaryGradientColor,
                borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.topRight,
                  image: AssetImage('assets/images/credit_design.png'),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth/28.23,vertical: screenHeight/58.91), //all15
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:screenHeight/29.90,), //height30
                    AutoSizeText(
                      'Your balance',
                      style: kBodyHeading1TextBold,
                    ),
                    AutoSizeText(
                      '₹ 103.00',
                      style: kBodyHeading1TextBold,
                    ),
                    Spacer(),
                    AutoSizeText(
                      'Redeem your tiff cash credit at checkout',
                      style: kBodyTextBoldWhitekMedium,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight/17.94,), //height50
            Container(
              height: screenHeight/2.99+screenHeight/8.97, //height400
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                color: kWhiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth/52.94,vertical:screenHeight/109.90 ), //all8
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:screenHeight/89.72,bottom: screenHeight/89.72),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoSizeText(
                            'Credit History',
                            style: kBodyTextBoldBlackMedium,
                          ),
                          AutoSizeText(
                            'IN21100321234',
                            style: kBodyTextBoldBlackMedium,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: kLightGrey,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Dinner',
                              style: kB1BodyTextBlack,
                            ),
                            AutoSizeText(
                              '21/08/2021',
                              style: kB1BodyText,
                            ),
                          ],
                        ),
                        AutoSizeText(
                          '₹ 10.00',
                          style: kB1BodyTextBlack,
                        ),
                      ],
                    ),
                    Divider(
                      color: kLightGrey,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Dinner',
                              style: kB1BodyTextBlack,
                            ),
                            AutoSizeText(
                              '21/08/2021',
                              style: kB1BodyText,
                            ),
                          ],
                        ),
                        AutoSizeText(
                          '₹ 10.00',
                          style: kB1BodyTextBlack,
                        ),
                      ],
                    ),
                    Divider(
                      color: kLightGrey,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Dinner',
                              style: kB1BodyTextBlack,
                            ),
                            AutoSizeText(
                              '21/08/2021',
                              style: kB1BodyText,
                            ),
                          ],
                        ),
                        AutoSizeText(
                          '₹ 10.00',
                          style: kB1BodyTextBlack,
                        ),
                      ],
                    ),
                    Divider(
                      color: kLightGrey,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Dinner',
                              style: kB1BodyTextBlack,
                            ),
                            AutoSizeText(
                              '21/08/2021',
                              style: kB1BodyText,
                            ),
                          ],
                        ),
                        AutoSizeText(
                          '₹ 10.00',
                          style: kB1BodyTextBlack,
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
