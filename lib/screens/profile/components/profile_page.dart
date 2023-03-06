import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  @override
  String name = 'Syed Mohammad Hussain';
  String userId = 'INUP627578587';
  String mobileNumber = '+918299253670';
  String homeAddress = '610/304/ Dariyabad, Allahabad';
  String officeAddress = '304/610/1 Dariyabad, Allahabad';
  String emailAddress = 'syed.darwisofficial@gmail.com';
  String workHub="HUB01897";
  String homeHub="HUB01999";
  String subValidity="10/12/2022";
  String lunchDelivery="10";
  String dinnerDeliver="11";
  Widget build(BuildContext context) {
    return Container(
      color: kAppBackgroundColor,
      height: Dimensions.screenHeight+100,
      width: Dimensions.screenWidth,
      child: Stack(
        children: [
          Positioned(
            top: Dimensions.height20,
            child: Container(
              width: Dimensions.screenWidth,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: Dimensions.height100,
                          width: Dimensions.width100,
                          //child: pickedImage==null? AssetImage('assets/images/G60.png') : FileImage(File(pickedImage.path)),
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor, width: Dimensions.width4/2),
                            borderRadius: BorderRadius.circular(Dimensions.height100),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:AssetImage('assets/images/HV.png'),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {

                              });
                            },
                            child: Container(
                              height: Dimensions.height30,
                              width: Dimensions.width30,
                              decoration: BoxDecoration(
                                color: kLightRedColor,
                                shape: BoxShape.circle,
                                border: Border.all(color: kWhiteColor, width: Dimensions.width4/2),
                              ),
                              child: Icon(
                                Icons.verified,
                                color: kWhiteColor,
                                size: Dimensions.height15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: Dimensions.height130,
            child: Container(
              width: Dimensions.screenWidth,
              height: Dimensions.screenHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.height20),
                color: kWhiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width20,vertical: Dimensions.height20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimensions.height20),
                      ),
                      child: Stack(
                        children: [
                          Ink.image(
                            image: AssetImage('assets/images/Bg Image.png'),
                            height: Dimensions.height100,
                            fit: BoxFit.cover,
                            child: InkWell(
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: Dimensions.width20, top: Dimensions.height20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    HeadingText(
                                      text: "Pro ",
                                      color: kWhiteColor,
                                    ),
                                    HeadingText(
                                      text: "Gold ",
                                      color: Color(0xFFFEB701),
                                    ),
                                    HeadingText(
                                      text: "Member",
                                      color: kWhiteColor,
                                    ),
                                  ],
                                ),
                                HeadingText(
                                  text: userId,
                                  color: kWhiteColor,
                                ),
                                //Text(result2,style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),)//will be updated according to date
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Dimensions.height10,),
                    fieldName(value: 'Name',),
                    fieldValue(name: name),
                    DividerWidget(),

                    fieldName(value: 'Mobile Number',),
                    fieldValue(name: mobileNumber),
                    DividerWidget(),


                    fieldName(value: 'Email',),
                    fieldValue(name: emailAddress),


                    DividerWidget(),
                    fieldName(value: 'Home Address',),
                    fieldValue(name: homeAddress),


                    DividerWidget(),
                    fieldName(value: 'Office Address',),
                    fieldValue(name: officeAddress),


                    DividerWidget(),
                    fieldName(value: 'Assigned Hub',),
                    fieldValue(name: 'Home: $homeHub' ),
                    fieldValue(name: "Work:  $workHub"),


                    DividerWidget(),
                    fieldName(value: 'Subscription Validity',),
                    fieldValue(name: subValidity),


                    DividerWidget(),
                    fieldName(value: 'Total Delivery',),
                    fieldValue(name: 'Lunch: $lunchDelivery'),
                    fieldValue(name: 'Dinner: $dinnerDeliver'),

                    //SizedBox(height: Dimensions.height60),
                  ],
                ),
              ),
            ),
          ),
        ],),
    );
  }
}

class fieldValue extends StatelessWidget {
  const fieldValue({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return SubHeadingText(
      text: name,
      color: Colors.black87,
      size: Dimensions.font14,
    );
  }
}

class fieldName extends StatelessWidget {
  const fieldName({
    required this.value
  });
  final String value;
  @override
  Widget build(BuildContext context) {
    return HeadingText(
      text: value,
      size: Dimensions.font16,
    );
  }
}
