import 'package:flutter/material.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
// import 'chat_support.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kAppBackgroundColor,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: Dimensions.height50,
              child: Container(
                width : Dimensions.screenWidth,
                height: Dimensions.screenHeight-kToolbarHeight-kBottomNavigationBarHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: kWhiteColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left:Dimensions.width15, top: Dimensions.height10),
                  child: HeadingText(
                    text: 'Customer Support',
                    color: kBlackColor,
                    size: Dimensions.font26,
                    ),
                  ),
                ),
          ),
          Positioned(
            top: Dimensions.height120,
            child: Container(
                width : Dimensions.screenWidth,
                height: Dimensions.screenHeight-kToolbarHeight-kBottomNavigationBarHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: kAppBackgroundColor,
                ),
                child: Stack(
                  children: <Widget>[
                    // Positioned(
                    //   top:Dimensions.height40,
                    //   left: 0,
                    //   // child: optionButton(
                    //   //   // onPress: (){
                    //   //   //   Navigator.of(context).push(MaterialPageRoute(builder: (context) =>()));
                    //   //   // },
                    //   //   headingText: 'Chat',
                    //   //   subHeadingText: '9:00 AM - 9:00 PM',
                    //   //   imagePath: 'assets/images/chat.png',
                    //   // ),
                    // ),
                    Positioned(
                      top:130,
                      left: 0,
                      child: optionButton(
                        onPress:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()));
                        },
                        headingText:'Contact Us',
                        subHeadingText:'9:00 AM - 9:00 PM',
                        imagePath:'assets/images/phone.png',
                      ),
                    ),
                    Positioned(
                      top:220,
                      left: 0,
                      child: optionButton(
                        onPress: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()));
                        },
                        headingText: 'Write to us',
                        imagePath: 'assets/images/mail.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
         // ),
        ],
      ),
    );
  }
}

class optionButton extends StatelessWidget {
  final Function()? onPress;
  final String headingText;
  final String subHeadingText;
  final String imagePath;

  const optionButton({
    required this.onPress,
    required this.headingText,
    this.subHeadingText="",
    required this.imagePath,
});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(kAppBackgroundColor),
        ),
        child: Container(
          height: Dimensions.height80,
          width:MediaQuery.of(context).size.width-20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius10),
            color: kWhiteColor,
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top:Dimensions.height10,
                left:Dimensions.width12,
                child: HeadingText(
                text: headingText,
                size: Dimensions.font26,
                ),
              ),
            Positioned(
              top:Dimensions.height40,
              left:Dimensions.width12,
                child: SubHeadingText(
                  text:subHeadingText,
                  ),
                ),
            Positioned(
              top:Dimensions.height10,
              left:MediaQuery.of(context).size.width-90,
              child: Image.asset(imagePath,),
            ),
          ],
        ),
      ),
    );
  }
}
