import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/screens/subscription_plan/components/silver.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

class Body extends StatelessWidget {
  final double circleRadius = Dimensions.radius150;
  final double circleBorderWidth = Dimensions.height4;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: Dimensions.height20,),
        Center(
          child: HeadingText(
            text: 'Choose your appetite',
            size: Dimensions.font26,
            //color: kBlackColor,
          ),
        ),
        SizedBox(height: Dimensions.height50,),
        Expanded(
          child: Row(
            children: [
              appetiteChoiceWidget(
                circleRadius: circleRadius,
                press:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Silver()));},
                imagePath: 'assets/images/Appetite Non-Veg.png',
                appetiteType: 'Non\n Vegetarian',
              ),
              SizedBox(height: Dimensions.height15,),
              appetiteChoiceWidget(
                circleRadius: circleRadius,
                press:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Silver()));},
                imagePath: 'assets/images/Appetite Veg.png',
                appetiteType: 'Vegetarian',
              ),
            ],
          ),
        ),

        SizedBox(height: Dimensions.height15,),
        Expanded(
          child: Row(
            children: [
              appetiteChoiceWidget(
                circleRadius: circleRadius,
                press:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Silver()));},
                imagePath: 'assets/images/Diet Non-Veg.png',
                appetiteType: 'Diet \nNon Vegetarian',
              ),

              SizedBox(height: Dimensions.height15,),
              appetiteChoiceWidget(
                circleRadius: circleRadius,
                press:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Silver()));},
                imagePath: 'assets/images/Diet Veg.png',
                appetiteType: 'Diet \n Vegetarian',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class appetiteChoiceWidget extends StatelessWidget {
  const appetiteChoiceWidget({
    required this.circleRadius,
    required this.press,
    required this.imagePath,
    required this.appetiteType
  });

  final double circleRadius;
  final Function()? press;
  final String imagePath;
  final String appetiteType;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children:[
          GestureDetector(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height60,left:Dimensions.width22,right:Dimensions.width22,bottom:Dimensions.height40),
              //color: kPrimaryColor,
              decoration: BoxDecoration(
                color: kMainThemeColor,
                borderRadius: BorderRadius.circular(Dimensions.radius25),
              ),
              child: Container(
                width: Dimensions.width500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //SizedBox(height: Dimensions.height80,),
                    Align(
                      alignment: Alignment.center,
                      child: HeadingText(
                        text:appetiteType,
                        color: kWhiteColor,
                        size: Dimensions.font20,
                        ),
                    ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: circleRadius,
              height: circleRadius,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
              ),
            ),

      ],
      ),
    );
  }
}
