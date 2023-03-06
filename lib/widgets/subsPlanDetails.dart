import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/boxContents.dart';
import 'package:tiffin/widgets/boxImage.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/description_text_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

class subsPlanDetails extends StatelessWidget {
  const subsPlanDetails({
    required this.plan,
    required this.cost,
    required this.planDetails,
    this.pollingRightsText='',
    required this.imagePath,
    required this.validity,
    required this.foodType,
    required this.onPress,
    required this.buttonText,
  });

  final String plan;
  final String cost;
  final String planDetails;
  final String pollingRightsText;
  final String imagePath;
  final String validity;
  final String foodType;
  final String buttonText;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'Choose your Tiff Plan',),
      ),
      body: Container(
        color: kWhiteColor,
        child: Stack(
          children: [
            SizedBox(height: Dimensions.height100,),
            Container(
              margin: EdgeInsets.only(top: Dimensions.height120),
              decoration: BoxDecoration(
                  color: kMainThemeColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.height30),
                    topLeft: Radius.circular(Dimensions.height30),
                  )
              ),
              child: Container(
                width: Dimensions.screenWidth,
                child: Column(
                  children: [
                    SizedBox(height: Dimensions.height50,),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.width20,
                          vertical: Dimensions.height30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              HeadingText(
                                text: plan,
                                size: Dimensions.font26,
                                color: kWhiteColor,
                              ),
                              SizedBox(
                                width: Dimensions.screenWidth - 170,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: HeadingText(
                                  text: cost,
                                  size: Dimensions.font26,
                                  color: kWhiteColor,
                                ),
                              ),
                            ],
                          ),
                          SubHeadingText(
                            text: foodType,
                            color: kWhiteColor,
                          ),
                          SizedBox(height: Dimensions.height30,),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.width12,
                                vertical: Dimensions.height12),
                            child: HeadingText(
                              text: 'Box Contents',
                              size: Dimensions.font17,
                              color: kWhiteColor,
                            ),
                          ),
                          SizedBox(height: (Dimensions.height10) / 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              boxContent(
                                text: 'Main Course 1',
                                imagePath: 'assets/images/Main Course 1.png',
                              ),
                              boxContent(
                                text: 'Main Course 2',
                                imagePath: 'assets/images/Main Course 2.png',
                              ),
                              boxContent(
                                text: 'Dal',
                                imagePath: 'assets/images/Dal.png',
                              ),
                              boxContent(
                                text: 'Rice',
                                imagePath: 'assets/images/Rice.png',
                              ),
                            ],
                          ),
                          //SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              boxContent(
                                text: 'Roti',
                                imagePath: 'assets/images/Roti.png',
                              ),
                              boxContent(
                                text: 'Sweets',
                                imagePath: 'assets/images/Sweets.png',
                              ),
                            ],
                          ),
                          SizedBox(height: Dimensions.height10,),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.width12,
                                vertical: Dimensions.height12),
                            child: HeadingText(
                              text: 'Details',
                              color: kWhiteColor,
                            ),
                          ),
                          //SizedBox(height: 2,),

                          Padding(
                            padding: EdgeInsets.only(left: Dimensions.width15),
                            child: DescriptionText(
                              text: planDetails,
                              size: Dimensions.height10,
                            ),
                          ),
                          SizedBox(height: Dimensions.height1,),
                          Align(
                            alignment: Alignment.centerRight,
                            child: DescriptionText(
                              text: pollingRightsText,
                              size: Dimensions.height8,
                            ),
                          ),
                          SizedBox(height: Dimensions.height40,),
                          Center(
                            child: Linkify(
                              onOpen: (link) => print("Clicked ${link.url}!"),
                              text: "Terms & Conditions",
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: Dimensions.height8,
                              ),

                              linkStyle: TextStyle(color: kMainThemeColor),
                            ),
                          ),
                          SizedBox(height: Dimensions.height10 / 2,),
                          DefaultButton(
                              text: buttonText,
                              press: onPress,
                            bgColor: kWhiteColor,
                            textColor: kLightRedColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 120,),
            boxImageWidget(
              imagePath: imagePath,
              plan: plan,
              validity: validity,
            ),

          ],
        ),
      ),
    );
  }
}