import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';

import '../../../utils/dimensions.dart';
import '../../../widgets/AppBarWidget.dart';
import '../../../widgets/screen_heading.dart';
import 'order_placed.dart';

class PaymentCheckout extends StatefulWidget {
  const PaymentCheckout({Key? key}) : super(key: key);

  @override
  State<PaymentCheckout> createState() => _PaymentCheckoutState();
}

class _PaymentCheckoutState extends State<PaymentCheckout> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Payment')),
      body: SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/44.86,bottom: screenHeight/44.86),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Choose your payment method',
                  style: kBodyHeading1Text,
                ),
              SizedBox(height: screenHeight/44.86,), //height20
              GestureDetector(
                onTap: (){},
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: kLightGrey,
                          borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth/84.705,vertical: screenHeight/179.451), //height5 width5
                          child: Icon(Icons.timer_outlined,size: 20,),
                        ),
                      ),
                      SizedBox(width: screenWidth/42.35,), //width10
                      AutoSizeText("UPI",style: kH3Heading,),
                      ],
                      ),
                    ],
                  ),
              ),
                SizedBox(height: screenHeight/109.90,), //height8
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: kLightGrey,
                              borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: screenWidth/84.705,vertical: screenHeight/179.451), //height5 width5
                              child: Icon(Icons.timer_outlined,size: 20,),
                            ),
                          ),
                          SizedBox(width: screenWidth/42.35,),
                          AutoSizeText("NetBanking",style: kH3Heading,),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight/109.90,), //height8
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: kLightGrey,
                              borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: screenWidth/84.705,vertical: screenHeight/179.451), //height5 width5
                              child: Icon(Icons.timer_outlined,size: 20,),
                            ),
                          ),
                          SizedBox(width: screenWidth/42.35,), //width10
                          AutoSizeText("Debit Card",style: kH3Heading,),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight/109.90,), //height8
                GestureDetector(
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: kLightGrey,
                              borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: screenWidth/84.705,vertical: screenHeight/179.451), //height5 width5
                              child: Icon(Icons.timer_outlined,size: 20,),
                            ),
                          ),
                          SizedBox(width: screenWidth/42.35,), //width10
                          AutoSizeText("Credit Card",style: kH3Heading,),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                DefaultButton(text: "Proceed Payment", press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPlacedScreen()));
                }),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
