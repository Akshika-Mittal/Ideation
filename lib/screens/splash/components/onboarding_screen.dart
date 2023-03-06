import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/screens/sign_in/sign_in_screen.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/onboard_nav_btn.dart';
import 'package:tiffin/screens/splash/components/onboarding_info.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  PageController _pageController = PageController(initialPage : 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: Dimensions.width8),
      duration: Duration(milliseconds: 400),
      height: Dimensions.height10,
      width: Dimensions.width10,
      decoration: BoxDecoration(
        color: currentPage == index ? kBlackColor : kIconColor,
        shape: BoxShape.circle,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double sizeH = Dimensions.blockSizeH;
    double sizeV = Dimensions.blockSizeV;
    //print(sizeH);
    return Scaffold(
      backgroundColor: Colors.white,
        body:SafeArea(
          child: Column(
            children:[
             Expanded(
               flex: 9,
                  child:PageView.builder(
                    controller: _pageController,
                    onPageChanged: (value){
                        setState(() {
                          currentPage = value;
                          });
                     },
                     itemCount: onboardingPages.length,
                     itemBuilder: (context,index) {
                       if (index % 2 == 0) {
                         return Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SizedBox(
                               height: sizeV * 14,
                             ),
                             Text(
                               onboardingPages[index].title,
                               style: kH1Heading,
                               //color: kBlackColor,
                               //size: Dimensions.font26,
                             ),
                             SizedBox(
                               height: sizeV * 3,
                             ),
                             SubHeadingText(
                               text: onboardingPages[index].description,
                               size: Dimensions.font14,
                               //style: description,
                               //textAlign: TextAlign.center,
                             ),
                             SizedBox(
                               height: sizeV,
                             ),
                             Container(
                               height: sizeV * 50,
                               child: Image.asset(
                                 onboardingPages[index].imageAsset,
                                 fit: BoxFit.contain,
                               ),
                             ),
                             SizedBox(
                               height: sizeV * 5,
                             ),
                           ],
                         );
                       }
                       else {
                         return Column(
                           children: [
                             SizedBox(
                               height: sizeV * 14,
                             ),
                             Container(
                               height: sizeV * 50,
                               child: Image.asset(
                                 onboardingPages[index].imageAsset,
                                 fit: BoxFit.contain,
                               ),
                             ),
                             HeadingText(
                               text: onboardingPages[index].title,
                               color: kBlackColor ,
                               size: Dimensions.font26,
                             ),
                             SizedBox(
                               height: sizeV * 3,
                             ),
                             SubHeadingText(
                               text: onboardingPages[index].description,
                               size: Dimensions.font14,
                             ),
                             SizedBox(
                               height: sizeV * 5,
                             ),
                           ],
                         );
                       }
                     }
                  ),
             ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    currentPage == onboardingPages.length - 1 ? DefaultButton(
                    text: 'Let\'s Get Started',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          ));
                      },
                    ) : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OnBoardNavBtn(
                        name: 'Skip',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInScreen()));
                        },
                      ),
                      Row(
                        children: List.generate(
                          onboardingPages.length,
                              (index) => dotIndicator(index),
                        ),
                      ),
                      OnBoardNavBtn(
                        name: 'Next',
                        onPressed: () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
    );
  }
}


