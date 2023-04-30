import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:tiffin/utils/AppColors.dart';

import '../../../utils/constants.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _couponCode = '';
  String generateCouponCode() {
    String prefix = 'Tiff';
    String chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    Random random = Random();
    String code = '';

    // generate a random string of 8 characters
    for (int i = 0; i < 8; i++) {
      code += chars[random.nextInt(chars.length)];
    }

    // concatenate the prefix and the random string
    String couponCode = '$prefix$code';

    return couponCode;
  }


  @override
  void initState() {
    super.initState();
    _generateCouponCode();
  }

  void _generateCouponCode() {
    setState(() {
      _couponCode = generateCouponCode();
    });
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kLightGrey,
      body: Padding(
        padding:EdgeInsets.only(top: screenHeight/22.43, left: screenWidth/21.17, right:screenWidth/21.17), //top40 left = right = 20
        child: Column(
          children: [
            Container(
              height: screenHeight/2.99+screenHeight/17.94, //height350
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                  image:DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/refferals.png")
                  )),
            ),

            SizedBox(height:screenHeight/44.86), //hegiht20
            ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors:[Color(0xFF8639B1),
                    Color(0xFFEB2133),
                    Color(0xFFFD9E41)],).createShader(bounds),

                child: AutoSizeText('Get ₹100',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,fontFamily: 'OpenSans',color: kWhiteColor),)),
            SizedBox(height:screenHeight/224.31+screenHeight/897.254), //height5
            AutoSizeText('For every new user refer',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: kBlackColor,fontFamily: 'OpenSans')),
            SizedBox(height:screenHeight/224.31+screenHeight/897.254), //height5
            SizedBox(height:screenHeight/89.72), //height10
            AutoSizeText('Share your refferel link and \n earn ₹100',style: kB1BodyText,textAlign: TextAlign.center,),

            SizedBox(height:screenHeight/22.43), //height40
            Container(
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(screenWidth/42.35), //widgh10
              ),
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/89.72), //width20 height10
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: kLightGrey,
                            borderRadius: BorderRadius.circular(screenWidth/105.88), //width5
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left:screenWidth/105.88,right:screenWidth/105.88,top:screenHeight/224.31,bottom:screenHeight/224.31),
                            child: Icon(Icons.copy_outlined,size: 20,),
                          ),


                        ),
                        SizedBox(width: screenWidth/21.17,), //width20
                        AutoSizeText(_couponCode.toUpperCase(),style: kB1BodyText,),
                      ],
                    ),

                    AutoSizeText('Share',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.redAccent,fontFamily: 'OpenSans'),),





                  ],
                ),
              ),
            ),





          ],
        ),
      ),
    );
  }
}

