import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';

import '../../../utils/constants.dart';
import '../../../utils/dimensions.dart';
import '../../home/home_screen.dart';
import '../../order_details/order_details_screen.dart';

class Body extends StatefulWidget {
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
  @override
  List<String> productName=['Vegetarian Delight','Non Veg Delight','Healthy Vegetarian','Healthy Non Veg'];
  List<String> productImage=['assets/images/BR15.png','assets/images/B30.png','assets/images/S15.png','assets/images/S30.png'];
  List<String> productCategoryImage=['assets/images/Vegetarian Logo.png','assets/images/Non Vegetarian Logo.png','assets/images/Vegetarian Logo.png','assets/images/Non Vegetarian Logo.png'];
  List<int> productPrice=[299,299,399,399];
  List<int> productQuantity=[0,0,0,0];
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    int total = this.productQuantity[0] + this.productQuantity[1] + productQuantity[2] + productQuantity[3];
    return Scaffold(
      body: Container(
        color: kLightGrey,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35, vertical: screenHeight/44.86),
            child: Stack(
                children:[
                  ListView.builder(itemCount: productName.length,itemBuilder: (context, index){
                    return Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth,
                          height: screenHeight/8.97, //height100
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: screenHeight/89.72,horizontal: screenWidth/42.35), //width10 height10
                                child: Container(
                                  height: screenHeight/14.95, //height60
                                  width: screenWidth/7.05,//width60
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenHeight/89.72), //width10
                                    image:DecorationImage(
                                        fit: BoxFit.cover,
                                        image:AssetImage(productImage[index],)

                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: screenHeight/89.72,horizontal: screenWidth/42.35), //width10 height10
                                child: Container(
                                  width: screenWidth/3.25+screenWidth/14.11+screenWidth/21.17, //1idth180
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            productName[index],
                                            style: kBodyHeading1TextBoldBlack,
                                          ),
                                        ],
                                      ),
                                      AutoSizeText('See today\'s menu for item \ndetails',style: kB1BodyText,),
                                      AutoSizeText('₹ '+productPrice[index].toString(),style: kB1BodyText,),

                                      //Text(result2,style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),)//will be updated according to date
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: screenHeight/17.94,left: screenWidth/7.56-5), //top50 //left50
                                child: Container(
                                  height: screenHeight/29.90, //height30
                                  width: screenWidth/7.05, //width60
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
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight/44.86, //height20
                        ),
                      ],
                    );
                  }
                  )
                ]
            )
        ),
      ),

    );
  }
}
