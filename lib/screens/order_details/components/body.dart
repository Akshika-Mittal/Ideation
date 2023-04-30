import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/order_details/components/delivery_location.dart';
import 'package:tiffin/screens/subscription_plan/subscription_plan_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:progress_timeline/progress_timeline.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import '../../../utils/dimensions.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final controller = ConfettiController();
  // controller.stop();
  String _promoCode="";
  String _validCode = "AKSHI30";
  bool _applied = false;
  String _errorMsg="";
  bool _showWalletGif = false;

  void _check(){
    print("Before Check ");
    print(_applied);
    if(_promoCode == _validCode){
      _errorMsg="";
      _applied=true;
      print("Applied = ");
      print(_applied);
      controller.play();
      Timer(Duration(seconds: 2), () {
        controller.stop();
      });
    }
    else{
      if(_applied==false)
        _errorMsg = "Plase Enter valid promo code!";
    }
    // else{
    //   _promoCode="";
    // }
  }
  // void initState(){
  //   super.initState();
  //
  // }
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/44.86,bottom: screenHeight/44.86), //height20 width20
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight/44.86,), //height20
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth/52.94), //width8
                    color: kWhiteColor
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth/35.29,vertical:screenHeight/74.77 ), //height12 width12
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText('Your Order',style: kBodyHeading1TextBoldBlack,),
                            TextButton(
                              onPressed:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => SubscriptionPlanScreen()));},
                              child: Row(
                                children: [
                                  ShaderMask(
                                      blendMode: BlendMode.srcATop,
                                      shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
                                      child: Icon(Icons.add),
                                  ),
                                  SizedBox(width: screenWidth/105.88,), //width4
                                  AutoSizeText('Add Item',style: kB1BodyText,),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight/44.86,), //height20
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText('Silver Member',style: kBodyHeading1Text,),
                                AutoSizeText('Single Order', style: kB1BodyText,),
                              ],
                            ),
                            AutoSizeText('₹ 299',style: kBodyHeading1Text,),
                          ],
                        ),
                        SizedBox(height: screenHeight/44.86), //height20
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _applied==true?Column(
                      children: [
                        ShaderMask(
                            blendMode: BlendMode.srcATop,
                            shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
                            child: AutoSizeText("YAY!!! "+ _promoCode+" APPLIED",style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,

                            ))),
                        ConfettiWidget(
                          blastDirectionality: BlastDirectionality.explosive,
                          confettiController: controller,
                          shouldLoop: false,
                          colors: const [
                            //Colors.green,
                            //Colors.blue,
                            Colors.pink,
                            //Colors.orange,
                            Colors.purple
                          ],
                          //numberOfParticles: 10,
                        ),
                      ],
                    ):Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50, //height40
                              width: screenWidth-100,
                              decoration: BoxDecoration(
                              //border: Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                                color: kWhiteColor,
                              ),
                              child: TextField(
                                onChanged: (value){
                                  _promoCode=value;
                                },
                               decoration: InputDecoration(
                                 contentPadding: EdgeInsets.only(left:screenWidth/42.35,), //left10 //height20
                                 enabledBorder:InputBorder.none,
                                 focusedBorder: InputBorder.none,
                                 hintText: "Enter Promo Code",
                                 hintStyle: kB1BodyText,
                               ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        AutoSizeText(_errorMsg,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),),
                      ],
                    ),
                    Container(
                      height: screenHeight/22.43, //height40
                      //width: screenWidth-100,
                      decoration: BoxDecoration(
                      ),
                      child: GestureDetector(
                          onTap: (){
                            setState(() {
                              _check();
                            });
                          },
                          child: _applied ?GestureDetector(onTap:(){
                            setState(() {
                              _applied=false;
                            });
                          },child: Icon(Icons.cancel_outlined,color: Colors.redAccent,))
                              : AutoSizeText(
                              'APPLY',
                            style: kBodyTextBoldBlackMedium,
                          ),
                      ),
                    ),
                  ],
                ),
                //     :Row(
                //   children: [
                //     AutoSizeText("Coupon Applied"),
                //     GestureDetector(
                //       onTap: (){
                //         _promoCode="";
                //       },
                //       child: Icon(Icons.cancel),
                //     ),
                //   ],
                // ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     AutoSizeText("Promo Code" , style: kBodyHeading1TextBoldBlack,),
                //     //SizedBox(height:screenHeight/179.451 ,),
                //     SizedBox(height: screenHeight/89.72,), //height10
                //     Container(
                //       height: screenHeight/22.43, //height40
                //       decoration: BoxDecoration(
                //         //border: Border.all(width: 1, color: Colors.white),
                //         borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                //         color: kWhiteColor,
                //       ),
                //       child: TextField(
                //         onChanged: (value){
                //           setState(() {
                //             _promoCode = value;
                //           });
                //         },
                //         decoration: InputDecoration(
                //           contentPadding: EdgeInsets.only(left:screenWidth/42.35,top: screenHeight/44.86,), //left10 //height20
                //           enabledBorder:InputBorder.none,
                //           focusedBorder: InputBorder.none,
                //           border: InputBorder.none,
                //           hintText: 'Enter promo code here',
                //           hintStyle: kB1BodyText,
                //           suffix: TextButton(
                //             onPressed: (){
                //               _applied?null:_applyPromoCode();
                //             },
                //             child: AutoSizeText(
                //               'APPLY',
                //               style: kB1BodyText,
                //             ),
                //           ),
                //
                //         ),
                //         //textAlignVertical:TextAlignVertical.center,
                //        // keyboardType: InputType.text,// set the keyboard type to number
                //         //controller: controller,
                //         cursorColor: kDividerColor,
                //         style: kB1BodyText,
                //         //obscureText: hintText=='Password'?true:false,
                //       ),
                //     ),
                //     if(_showWalletGif)
                //       AnimatedPositioned(
                //         duration: Duration(seconds: 1),
                //         right: _applied?-100:10,
                //         child: Icon(Icons.wallet),
                //       ),
                //
                //   ],
                // ),
              // Stack(
              //   children: [
              //     Row(
              //       children: [
              //         Expanded(
              //           child: TextField(
              //             onChanged: (value) {
              //               setState(() {
              //                 _promoCode = value;
              //               });
              //             },
              //             decoration: InputDecoration(
              //               hintText: 'Enter promo code',
              //             ),
              //           ),
              //         ),
              //         SizedBox(width: 10),
              //         ElevatedButton(
              //           onPressed: _applied ? null : _applyPromoCode,
              //           child: Text('Apply'),
              //         ),
              //       ],
              //     ),
              //     if (_showWalletGif)
              //       AnimatedPositioned(
              //         duration: Duration(seconds: 1),
              //         right: _applied ? 10 : -100,
              //         child: Icon(Icons.wallet_giftcard),
              //       ),
              //   ],
              // ),
                DividerWidget(),

                AutoSizeText('Summary',style: kBodyHeading1TextBoldBlack,),
                SizedBox(height: screenHeight/89.72,), //height10
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth/52.94), //width8
                    color: kWhiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth/35.29,vertical:screenHeight/74.77 ), //height12 width12
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText('Tiff Credits',style: kBodyHeading1Text,),
                        Container(
                          decoration: BoxDecoration(
                            gradient: kPrimaryGradientColor,
                            borderRadius: BorderRadius.circular(screenWidth/52.94), //width8
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: screenWidth/52.94,vertical: screenHeight/109.90), //height8 width8
                            child: AutoSizeText(
                                '₹ 30.00',
                              style: kSmallButtonText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight/89.72,), //height10
                Container(
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(screenWidth/52.94), //width8
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth/35.29,vertical:screenHeight/74.77 ), //height12 width12
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText('Subtotal',style: kB1BodyText,),
                            AutoSizeText('₹ 299',style: kB1BodyText,),
                          ],
                        ),
                        //SizedBox(height: screenHeight/179.451,), //height5
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText('Delivery Fee',style:kB1BodyText,),
                            AutoSizeText('₹ 0',style: kB1BodyText,),
                          ],
                        ),
                        //SizedBox(height: screenHeight/179.451,), //height5
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText('Taxes',style: kB1BodyText,),
                            AutoSizeText('₹ 14.95',style: kB1BodyText,),
                          ],
                        ),
                        //SizedBox(height: screenHeight/179.451,), //height5
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText('Grand Total',style: kB1BodyText,),
                            AutoSizeText('₹ 413.95',style: kB1BodyText,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText('Promo Code',style: kB1BodyText,),
                            AutoSizeText('- ₹ 20',style: kB1BodyText,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText('Tiff Credits',style: kB1BodyText,),
                            AutoSizeText('- ₹ 20',style: kB1BodyText,),
                          ],
                        ),
                        Divider(),
                        SizedBox(height: screenHeight/179.451,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText('Net Payable',style: kBodyHeading1TextBoldBlack,),
                            AutoSizeText('₹ 413.95',style: kBodyHeading1TextBoldBlack,),
                          ],
                        ),
                        SizedBox(height: screenHeight/179.451,), //height5
                        DividerWidget(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight/44.86,), //height20
                DefaultButton(text: 'Next', press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutDeliveryLocationScreen()));
                }),
              ],
            ),
          ),
        ),
    );
  }
}
