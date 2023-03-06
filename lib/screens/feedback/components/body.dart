import 'package:flutter/material.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:tiffin/screens/customer_support/customer_support_screen.dart';
import 'package:tiffin/screens/home/components/body.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int deliveryStatusCode=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width12,vertical: Dimensions.height12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DividerWidget(),
          Align(
            alignment: Alignment.centerLeft,
            child: HeadingText(text: 'Send Feedback',),
            ),
          SizedBox(height: Dimensions.height10,),
          Align(
            alignment: Alignment.centerLeft,
            child: SubHeadingText(text: 'Tell us what you love about our app or what we could be doing better',),
          ),
          SizedBox(height: Dimensions.height30,),
          TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter Feedback',
            ),
          ),
          SizedBox(height: Dimensions.height40,),
          GestureDetector(
            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>CustomerSupport(),
            ));},
            child: Container(
              height: Dimensions.height110,
              width: Dimensions.screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.width10),
                color: kMainThemeColor,
              ),
              child: Padding(
                padding:EdgeInsets.symmetric(horizontal: Dimensions.width12,vertical: Dimensions.height12),
                child: Row(
                  children: <Widget>[
                    Image(
                        image: AssetImage('assets/images/feedback.png',),),
                    SizedBox(width: Dimensions.width20,),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: [
                          SizedBox(
                            height: Dimensions.height15,
                          ),
                          SubHeadingText(
                            text:'Need help with your order?',
                            color: kWhiteColor,
                          ),
                          SubHeadingText(
                            text: 'Get instant help from our support team',
                            color: kWhiteColor,
                          ),
                        ],
                      ),
                    ),
                 ],
                ),
              ),
            ),
          ),
          // FloatingActionButton(
          //     onPressed: (){
          //       // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HomeScreen( statuscode: deliveryStatusCode,),
          //       // ));
          //       setState(() {
          //         if(deliveryStatusCode == 6){
          //           deliveryStatusCode=0;
          //         }
          //         else{
          //           deliveryStatusCode++;
          //         }
          //       });
          //     }),
          Spacer(),
          DefaultButton(
              text: 'Submit Feedback',
              press: (){}
          ),
        ],
      ),
    );
  }
}
