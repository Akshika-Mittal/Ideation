import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';

import '../../../utils/constants.dart';
import '../../../widgets/AppBarWidget.dart';
class CustomerHealthCard extends StatefulWidget {
  final String bmi,bsa,bmr,ibw,lbw,lbm,mmp,bfp;
  final double weight;
  const CustomerHealthCard({
    Key? key,
    required this.bmi,
    required this.bsa,
    required this.bmr,
    required this.ibw,
    required this.lbw,
    required this.lbm,
    required this.mmp,
    required this.bfp,
    required this.weight,

  }) : super(key: key);

  @override
  State<CustomerHealthCard> createState() => _CustomerHealthCardState(this.bmi,this.bsa,this.bmr,
    this.ibw,
    this.lbw,
    this.lbm,
    this.mmp,
    this.bfp,
    this.weight,
  );
}

class _CustomerHealthCardState extends State<CustomerHealthCard> {
  final String bmi, bsa,bmr,ibw,lbw,lbm,mmp,bfp;
  final double weight;

  _CustomerHealthCardState(this.bmi, this.bsa, this.bmr,this.ibw,
      this.lbw,
      this.lbm,
      this.mmp,
      this.bfp,
      this.weight,
      );

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    String status="ideal";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight/17.94),
          child: AppBarWidget(text:'')
      ),
      body: SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight/44.862 ,bottom: screenHeight/44.862,left:screenWidth/21.176,right:screenWidth/21.176), //height20,width20
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Your Health Card',
                  style: kH1Heading,
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                AutoSizeText(""
                    "Complete health data in one go..",
                  style: kH2Heading,),
                SizedBox(
                  height: screenHeight/17.94, //height50
                ),
                Container(
                  height:screenHeight/22.43,//heihgt40
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                    color: kWhiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal:screenWidth/42.35,),//all10
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconDenotion(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                          value: 'Low',
                          color: Colors.red,
                        ),
                        IconDenotion(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          value: 'Ideal',
                          color: Colors.yellow,
                        ),
                        IconDenotion(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          value: 'High',
                          color: Colors.green,
                        ),
                        // IconDenotion(
                        //   screenWidth: screenWidth,
                        //   screenHeight: screenHeight,
                        //   value: 'Very High',
                        //   color: Colors.pink,
                        // ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                Container(
                  //height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight/89.72 ,bottom: screenHeight/89.72,left:screenWidth/42.35,right:screenWidth/42.35), //height10,width10
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Divider(),
                        SizedBox(height: screenHeight/89.72,), //height10
                        //Body Mass Index
                        HealthInformation(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            info: bmi,
                          iconInfo: Icons.accessibility,
                          infoType: "Body Mass Index",
                          status: double.parse(bmi)<=24.9 && double.parse(bmi)>=18.5?'Ideal': double.parse(bmi)>=25 ?'High':'Low',
                        ),
                        Divider(),
                        HealthInformation(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          info: bsa,
                          iconInfo: Icons.straighten,
                          infoType: "Body surface area",
                          status: double.parse(bmi)<1.9 && double.parse(bmi)>=1.6?'Ideal': double.parse(bmi)>=1.9 ?'High':'Low',
                        ),
                        Divider(),
                        HealthInformation(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          info: bmr,
                          iconInfo: Icons.directions_run,
                          infoType: "Basal Metabolic Rate",
                          status: double.parse(bmr)<=2000 && double.parse(bmr)>=1200?'Ideal': double.parse(bmr)>2000 ?'High':'Low',
                        ),
                        Divider(),
                        HealthInformation(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          info: ibw,
                             iconInfo: Icons.aspect_ratio,
                          infoType: "Ideal Body Weight",
                          status: double.parse(ibw)<=weight! + 10 && double.parse(ibw)>= weight! - 10?'Ideal': double.parse(ibw)>=weight! + 10 ?'High':'Low',
                        ),
                        Divider(),
                        HealthInformation(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          info: lbm,
                         iconInfo: Icons.fitness_center,
                          infoType: "Lean body mass",
                          status: double.parse(lbm)<=weight! * 1.1 && double.parse(lbm)>=weight! * 0.9?'Ideal': double.parse(lbm)>weight! * 0.9 ?'High':'Low',
                        ),
                        Divider(),
                        HealthInformation(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          info: mmp+" %",
                          iconInfo: Icons.opacity,
                          infoType: "Muscle Mass Percentage",
                          status: double.parse(mmp)<=42 && double.parse(mmp)>=38?'Ideal': double.parse(mmp)>42 ?'High':'Low',
                        ),
                        Divider(),
                        HealthInformation(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          info: bfp+" %",
                          iconInfo: Icons.accessibility_sharp,
                          infoType: 'Body fat percentage',
                          status: double.parse(bfp)<25 && double.parse(bfp)>=18.5?'Ideal': double.parse(bfp)>=25 ?'High':'Low',
                        ),
                        Divider(),

                      ],),),),
              ],),),
        ),
      ),);
  }
}

class IconDenotion extends StatelessWidget {
  const IconDenotion({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.value,
    required this.color,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: screenWidth/21.17, //width20
          height: screenHeight/44.86, //height20
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: screenWidth/105.88,), //width4
        AutoSizeText(value,style: kB1BodyTextBlack,)
      ],
    );
  }
}

class DisplayDenotion extends StatelessWidget {
  const DisplayDenotion({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth/21.17, //width20
      height: screenHeight/44.86, //height20
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class HealthInformation extends StatelessWidget {
  const HealthInformation({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.info,
    required this.infoType,
    required this.status,
    required this.iconInfo,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String infoType;
  final String info;
  final String status;
  final IconData iconInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: kLightGrey,
                borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
              ),
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight/179.451 ,bottom: screenHeight/179.451, left:screenWidth/84.705,right:screenWidth/84.705), //height5,width5
                child: Icon(iconInfo, size: 15,),
              ),
            ),
            SizedBox(width: screenWidth/42.35,), //width10
            AutoSizeText(infoType,style: kB1BodyText,),
          ],
        ),

        AutoSizeText(info , style: kB1BodyText,),
        status=='Low'?DisplayDenotion(color:Colors.red):status=='Ideal'?DisplayDenotion(color: Colors.red,) : DisplayDenotion(color: Colors.green),
        //if(double.parse(bmi)<20 && double.parse(bmi)>15) status="Ideal";

      ],
    );
  }
}




