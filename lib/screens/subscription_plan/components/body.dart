import 'package:auto_size_text/auto_size_text.dart';
import 'package:date_picker_timeline/extra/dimen.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

import '../../../utils/constants.dart';
import '../../order_details/order_details_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  List<String> subProductName=['Bronze','Bronze Pro','Silver','Silver Pro','Gold','Gold Pro','Platinum','Platinum Pro'];
  List<String> subProductImage=['assets/images/BR15.png','assets/images/B30.png','assets/images/S15.png','assets/images/S30.png','assets/images/G30.png','assets/images/G60.png','assets/images/P30.png','assets/images/P60.png'];
  //List<String> subProductValidity=['15','30','30','60','30','60'];
  // List<String> sub=[];
  List<String> subFoodType=['assets/images/Normal.png','assets/images/Normal.png','assets/images/Healthy.png','assets/images/Healthy.png','assets/images/Normal.png','assets/images/Normal.png','assets/images/Healthy.png','assets/images/Healthy.png'];
  List<String> subProductDescription=[
    '15 days 15 meals \nVeg/NonVeg',
    '15 days 30 meals \nVeg/NonVeg',
    '15 days 15 meals \nDietician available',
    '15 days 30 meals \nDietician available',
    '30 days 30 meals \nVeg/NonVeg',
    '30 days 60 meals \nVeg/NonVeg',
    '30 days 30 meals \nDietician available',
    '60 days 60 meals \nDietician available'];


  List<String> subProductCategoryImage=['assets/images/15.png','assets/images/15.png','assets/images/15.png','assets/images/15.png','assets/images/30.png','assets/images/30.png','assets/images/30.png','assets/images/30.png'];
  List<int> subProductPrice=[4485,8970,5985,11970,8970,17940,11970,23940];

  List<int> subProductQuantity=[0,0,0,0,0,0,0,0];

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    int total = this.subProductQuantity[0] + this.subProductQuantity[1] + this.subProductQuantity[2] + this.subProductQuantity[3]+this.subProductQuantity[4]+this.subProductQuantity[5]+this.subProductQuantity[6]+this.subProductQuantity[7];
    return Container(
      color: kLightGrey,
      child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth/42.35, vertical: Dimensions.height20),
            child: Stack(
                children:[
                  ListView.builder(itemCount: subProductName.length,itemBuilder: (context, index){
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
                                    borderRadius: BorderRadius.circular(screenHeight/89.72),
                                    image:DecorationImage(
                                        fit: BoxFit.cover,
                                        image:AssetImage(subProductImage[index],)

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
                                            subProductName[index],
                                            style: kBodyHeading1TextBoldBlack,
                                          ),
                                        ],
                                      ),
                                      AutoSizeText(subProductDescription[index],style: kB1BodyText,),
                                      AutoSizeText('₹ '+subProductPrice[index].toString(),style: kB1BodyText,),

                                      //Text(result2,style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),)//will be updated according to date
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: screenHeight/17.94,left: screenWidth/7.56-5), //top50 //left50
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
                                          child: AutoSizeText('Buy Now',style: kSmallButtonText,),
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
            ),
      ),
    );
  }
}
