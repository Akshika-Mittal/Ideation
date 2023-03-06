import 'package:date_picker_timeline/extra/dimen.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

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
    int total = this.subProductQuantity[0] + this.subProductQuantity[1] + this.subProductQuantity[2] + this.subProductQuantity[3]+this.subProductQuantity[4]+this.subProductQuantity[5]+this.subProductQuantity[6]+this.subProductQuantity[7];

    return Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height20),
          child: Stack(
              children:[
                ListView.builder(itemCount: subProductName.length,itemBuilder: (context, index){
                  return Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Dimensions.screenWidth,
                        height: Dimensions.height100,
                        decoration: BoxDecoration(
                            color: kAppBackgroundColor,
                            borderRadius: BorderRadius.circular(Dimensions.height10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: Dimensions.height10,horizontal: Dimensions.width10),
                              child: Container(
                                height: Dimensions.height60,
                                width: Dimensions.width60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(Dimensions.height10),
                                  image:DecorationImage(
                                      fit: BoxFit.cover,
                                      image:AssetImage(subProductImage[index],)

                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:Dimensions.height10,bottom:Dimensions.height10),
                              child: Container(
                                width: Dimensions.width130+Dimensions.width30+Dimensions.width20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                          text:subProductName[index],
                                        ),
                                      ],
                                    ),
                                    SubHeadingText(text: subProductDescription[index],),
                                    SubHeadingText(text: '₹ '+subProductPrice[index].toString(),color: kBlackColor),

                                    //Text(result2,style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),)//will be updated according to date
                                  ],
                                ),
                              ),
                            ),
                            subProductQuantity[index]==0? Padding(
                              padding: EdgeInsets.only(top: Dimensions.height50,left: Dimensions.width15),
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    //print(productQuantity[index]);
                                    //int a=productQuantity[0];
                                    // print('index');
                                    //print(index);
                                    ///print('productQuantity[index] value');
                                    // print(productQuantity[index]);
                                    int a = subProductQuantity[index]++;
                                    // print(a);
                                    subProductQuantity[index]=1;
                                    //print(productQuantity[index]);
                                    //print('total');
                                    //print(total);
                                    // print('p1');
                                    //print(p1Quantity);
                                  });
                                },
                                child: Container(
                                  height: Dimensions.height25,
                                  width: Dimensions.width70,
                                  decoration: BoxDecoration(
                                      color: kMainThemeColor,
                                      borderRadius: BorderRadius.circular(Dimensions.height10),
                                  ),
                                  child: Center(child: SubHeadingText(text: 'Add',color: kWhiteColor,)),
                                ),
                              ),
                            ):Padding(padding: EdgeInsets.only(top: Dimensions.height50,left: Dimensions.width15), child: Row(children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    //p1Quantity--;
                                    subProductQuantity[index]--;
                                    //print('-- activity');
                                    //print(productQuantity[index]);
                                  });
                                },
                                child: Container(
                                  height: Dimensions.height25,
                                  width: Dimensions.width20,
                                  decoration: BoxDecoration(color: kMainThemeColor,
                                      borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(Dimensions.height10),bottomStart: Radius.circular(Dimensions.height10),
                                      )
                                  ),
                                  child: Center(
                                    child: SubHeadingText(text: '-',color: kWhiteColor,),
                                  ),
                                ),
                              ),
                              Container(
                                height: Dimensions.height25,
                                width: Dimensions.width30,
                                color: kWhiteColor,
                                child: Center(
                                  child: SubHeadingText(text: subProductQuantity[index].toString(),color:kMainThemeColor),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    subProductQuantity[index]++;
                                    // print(total);
                                  });
                                },
                                child: Container(
                                  height: Dimensions.height25,
                                  width: Dimensions.width20,
                                  decoration: BoxDecoration(color: kMainThemeColor,
                                      borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(Dimensions.height10),bottomEnd: Radius.circular(Dimensions.height10),
                                      )
                                  ),
                                  child: Center(
                                    child: SubHeadingText(text: '+',color: kWhiteColor,),
                                  ),
                                ),
                              ),
                            ],
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: Dimensions.height20,),
                    ],);
                }),
                total>0?Positioned(
                  bottom: Dimensions.height20,
                  child: Container(
                      width: Dimensions.screenWidth-40,
                      height: Dimensions.height60,
                      child:Padding(
                        padding: EdgeInsets.symmetric(vertical: Dimensions.height10,horizontal: Dimensions.width10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SubHeadingText(text: (subProductQuantity[0]+subProductQuantity[1]+subProductQuantity[2]+subProductQuantity[3]+subProductQuantity[4]+subProductQuantity[5]+subProductQuantity[6]+subProductQuantity[7]).toString()+' items | ',color: kWhiteColor,),
                                    SubHeadingText(text: '₹ '+(subProductQuantity[0]*subProductPrice[0]+subProductQuantity[1]*subProductPrice[2]+subProductQuantity[2]*subProductPrice[2]+subProductQuantity[3]*subProductPrice[3]+subProductQuantity[4]*subProductPrice[4]+subProductQuantity[5]*subProductPrice[5]+subProductQuantity[6]*subProductPrice[6]+subProductQuantity[7]*subProductPrice[7]).toString(),color: kWhiteColor,),
                                  ],
                                ),
                                SubHeadingText(text: 'Extra charges may apply',color: kWhiteColor, ),
                              ],
                            ),
                            Spacer(),
                            SubHeadingText(text: 'View Cart',color: kWhiteColor,),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(color: kMainThemeColor,
                        borderRadius:BorderRadius.circular(Dimensions.height10),
                      )

                  ),
                ):SizedBox(
                  height: Dimensions.height300,
                ),
              ]
          ),
    );
  }
}
