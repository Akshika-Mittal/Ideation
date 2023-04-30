import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

import 'chat_support.dart';
// import 'chat_support.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: kLightGrey,
      child: Padding(
        padding: EdgeInsets.only(left:screenWidth/21.17, right:screenWidth/21.17,top:screenHeight/44.86), //left=right=top=20
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: screenHeight/2.99+screenHeight/12.81,
              decoration: BoxDecoration(
                image:DecorationImage(
                  //colorFilter: kBlackColor,
                  fit: BoxFit.cover,
                  //alignment: FractionalOffset.topRight,
                  image: AssetImage(
                      'assets/images/customer_support.png'),
                ),
              ),//height370
            ),
            //Image(image: AssetImage('assets/images/Boxes.jpg')),
            SizedBox(
              height: screenHeight/44.86, //height20
            ),
            Align(
              alignment: Alignment.center,
              child: AutoSizeText(
                'We are here to help so please get in touch with us.',
                style: kH2Heading,
              ),
            ),
            SizedBox(
              height: screenHeight/29.90, //height30
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                color: kWhiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(top:screenHeight/44.86), //top20
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenHeight/35.89), //left25
                      child: GestureDetector(
                        onTap: (){},
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(screenWidth/84.705),  //width5
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: kLightGrey,
                                  borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(top: screenHeight/179.450,bottom: screenHeight/179.450,left: screenWidth/84.705,right: screenWidth/84.705), //height=width=5
                                  child: Icon(Icons.phone,size: 20,),
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth/28.23,), //width15
                            //AutoSizeText(itemName,style: kB1BodyText,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Phone number',
                                  style: kBodyHeading1TextBoldBlack,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: AutoSizeText(
                                    '+91-9628262373',
                                    style: kB1BodyText,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight/89.72, //height10
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:screenWidth/28.23,right: screenWidth/28.23), //left=right=15
                      child: Divider(
                        color: kLightGrey,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight/89.72, //height10
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenHeight/35.89), //left25
                      child: GestureDetector(
                        onTap: (){},
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(screenWidth/84.705),  //width5
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: kLightGrey,
                                  borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(top: screenHeight/179.450,bottom: screenHeight/179.450,left: screenWidth/84.705,right: screenWidth/84.705), //height=width=5
                                  child: Icon(Icons.email_rounded,size: 20,),
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth/28.23,), //width15
                            //AutoSizeText(itemName,style: kB1BodyText,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'E-mail address',
                                  style: kBodyHeading1TextBoldBlack,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: AutoSizeText(
                                    'tifffoods@gmail.com',
                                    style: kB1BodyText,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: screenHeight/22.43,
                    // ),
                    SizedBox(
                      height: screenHeight/89.72, //height10
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:screenWidth/28.23,right: screenWidth/28.23),
                      child: Divider(
                        color: kLightGrey,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight/89.72, //height10
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenHeight/35.89), //left25
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatSupport()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius: BorderRadius.circular(screenWidth/84.705),  //width5
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: kLightGrey,
                                      borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top: screenHeight/179.450,bottom: screenHeight/179.450,left: screenWidth/84.705,right: screenWidth/84.705), //height=width=5
                                      child: Icon(Icons.chat,size: 20,),
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenWidth/28.23,), //width15
                                //AutoSizeText(itemName,style: kB1BodyText,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      'Contact live chat',
                                      style: kBodyHeading1TextBoldBlack,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: AutoSizeText(
                                        'We are ready to answer you.',
                                        style: kB1BodyText,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: screenWidth/14.11+screenWidth/84.705), //width35
                              child: Icon(Icons.arrow_forward_ios,size: 15,),
                            ),
                          ],
                        ),

                      ),
                    ),
                    SizedBox(
                      height: screenHeight/44.86, //height20
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
