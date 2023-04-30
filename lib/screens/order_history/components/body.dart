import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> plan_name = [
    'Vegetarian Delight',
    'Healthy Vegetarian',
    'Bronze',
    'Silver Pro',
    'Gold Pro',
    'Silver',
  ];
  List<String> plan_image=['assets/images/Appetite Non-Veg.png','assets/images/Appetite Veg.png','assets/images/Appetite Veg.png','assets/images/Appetite Veg.png','assets/images/Appetite Veg.png','assets/images/Appetite Veg.png'];
  List<int> order_id=[1878301,18729801,14818401,17827801,172874801,12462701];
  List<String> orderDate=['12/03/2023 ','12/03/2023','12/03/2023 ','12/03/2023','12/03/2023','12/03/2023'];
  List<String> orderPrice=['₹ 234','\₹ 2344','\₹ 234','\₹ 234','\₹ 234','\₹ 2344'];

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight/44.862 ,bottom: screenHeight/44.862,left:screenWidth/21.176,right:screenWidth/21.176), //height20,width20

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight/44.862,),
                ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: order_id.length,
                    itemBuilder: (context, index){
                      return  Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: screenHeight/89.725,bottom: screenHeight/89.725,left: screenWidth/42.352,right: screenWidth/42.352), //height=eidth=10
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: kLightGrey,
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(top: screenHeight/179.450,bottom: screenHeight/179.450,left: screenWidth/84.705,right: screenWidth/84.705), //height=width=5
                                              child: Icon(Icons.food_bank_rounded,size: 20,),
                                            ),
                                          ),
                                          SizedBox(width: screenWidth/42.352,),
                                          AutoSizeText(
                                            "Order ID",
                                            style: kBodyTextBoldBlackMedium
                                          ),
                                        ],
                                      ),
                                      AutoSizeText(
                                        order_id[index].toString(),
                                        style: kBodyTextBoldBlackMedium,
                                      ),
                                    ],
                                  ),
                                  Divider(
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: screenHeight/89.725,), //height=eidth=10
                                        child: Container(
                                          height: screenHeight/14.954, //height60
                                          width: screenWidth/7.058, //width60
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            image:DecorationImage(
                                                fit: BoxFit.cover,
                                                image:AssetImage(plan_image[index],)
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top:screenHeight/44.862),
                                        child: Container(
                                          width: screenWidth/2.352,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  AutoSizeText(
                                                      plan_name[index],
                                                      style: TextStyle(
                                                        fontFamily: 'OpenSans',
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w500,
                                                        //height: 5,
                                                        color: Color(0xFF2D2D2D),
                                                      ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              AutoSizeText(
                                                'HUBID - 123456',
                                                style: kB1BodyText,
                                              ),
                                              // SizedBox(
                                              //   height: screenHeight/89.72, //height10
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      AutoSizeText("Order Date & Time",style: kB1BodyText,),
                                      AutoSizeText(orderDate[index] + " at 12:34 PM",style: kB1BodyText,
                                      )
                                    ],
                                  ),
                                  SizedBox(height:screenHeight/179.450,),  //height5
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Order Price",style: kB1BodyText,),
                                      Text(orderPrice[index],
                                        style: kB1BodyText
                                      )
                                    ],
                                  ),
                                  SizedBox(height:screenHeight/179.450),
                                ],
                              ),
                            ),
                          ),
                          //space between container
                          SizedBox(height: screenHeight/89.725,) //height10
                        ],
                      );
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}