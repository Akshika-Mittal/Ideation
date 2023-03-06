import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

class boxImageWidget extends StatelessWidget {
  const boxImageWidget({
    required this.imagePath,
    required this.plan,
    required this.validity
  });
  final String imagePath;
  final String plan;
  final String validity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width20,vertical: Dimensions.height20),
      child: Container(
          height: Dimensions.height160,
          width: Dimensions.screenWidth-40,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(Dimensions.height15),),
            child: Stack(
              children: [
                Ink.image(image: AssetImage(imagePath),
                fit: BoxFit.cover,
                ),
                Padding(padding: EdgeInsets.only(left: Dimensions.width15,top: Dimensions.height30,right: Dimensions.width10),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children : [
                        HeadingText(text: plan,color: kWhiteColor,size: Dimensions.font38,),
                      ],
                    ),
                    SubHeadingText(text: "Vegetarian - Non Vegetarian",color: kWhiteColor,size: Dimensions.font16,),
                    SizedBox(height: Dimensions.height30,),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SubHeadingText(
                        text: validity,
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                  ),
                ),
            ],
          ),
          ),
      ),
    );
  }
}