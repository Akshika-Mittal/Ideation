import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';

class Body extends StatelessWidget {
  int deliveryStatusCode=0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        color: kLightGrey,
        child: Padding(
          padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/44.86), //left=right=20 top=10
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: screenHeight/2.99+screenHeight/12.81,
                decoration: BoxDecoration(
                  image:DecorationImage(
                    //colorFilter: kBlackColor,
                    fit: BoxFit.cover,
                    //alignment: FractionalOffset.topRight,
                    image: AssetImage(
                        'assets/images/feedback.png'),
                  ),
                ),//height370
              ),
              SizedBox(
                height:screenHeight/44.86, //height20
              ),
              Align(
                alignment: Alignment.center,
                child: RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: screenWidth/105.88), //width4
                  itemBuilder: (context, _) => ShaderMask(
                    blendMode: BlendMode.srcATop,
                    shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
                    child: Icon(
                      Icons.star,
                      color: Colors.amber,
                ),
                  ),
                  onRatingUpdate: (rating) {
                  print(rating);
                },
                ),
              ),
             SizedBox(
               height: screenHeight/89.72, //height10
             ),
              SizedBox(
                height: screenHeight/89.72, //height10
              ),//DividerWidget(),
              Align(
                alignment: Alignment.center,
                child: AutoSizeText('Send Feedback',style: kH1Heading,),
                ),
              SizedBox(
                height: screenHeight/29.90, //height30
              ),
              //SizedBox(height: Dimensions.height10,),
              AutoSizeText('Tell us what you love about our app or what we could be doing better',style: kH2Heading,textAlign: TextAlign.center,),
              SizedBox(
                height: screenHeight/29.90, //height30
              ),
              Container(
                color: kWhiteColor,
                child: TextField(
                  decoration: InputDecoration(
                    //fillColor:kWhiteColor,
                    //focusColor:kWhiteColor,
                    //hoverColor:kWhiteColor,
                    enabledBorder:InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Enter Feedback',
                    hintStyle: kB1BodyText,
                    contentPadding:
                    EdgeInsets.only(left: screenWidth/42.35, bottom: screenHeight/89.72+screenHeight/897.254, top: screenHeight/89.72+screenHeight/897.254,right: screenWidth/28.23), //left 10 right 15 top=bottpm=11
                  ),
                  maxLines : 5,
                  style: kB1BodyText,
                ),
              ),

              Spacer(),
              DefaultButton(
                  text: 'Submit Feedback',
                  press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
