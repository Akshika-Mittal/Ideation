import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/divider_widget.dart';

import '../../../utils/AppColors.dart';

class Step {
  Step(
      this.title,
      this.title2,
      this.title3,
      this.code,
      this.body,
      [this.isExpanded = false]
      );
  String title;
  String title2,title3,code;
  String body;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('₹10 - ₹100 Paytm cashback ','Use Paytm UPI', 'Get upto ₹100 cashback with this code','PAYTMUPI', '• Offer applicable once per customer \n• Offer only applicable with Paytm UPI \n• Paytm cashback will be credited in your wallet within 24 hours of order completition\n• Other t&c may apply'),
    Step('₹10 - ₹100 Paytm cashback ','Use Paytm UPI', 'Get upto ₹100 cashback with this code','PAYTMUPI', '• Offer applicable once per customer \n• Offer only applicable with Paytm UPI \n•Paytm cashback will be credited in your wallet within 24 hours of order completition\n• Other t&c may apply'),
    Step('₹10 - ₹100 Paytm cashback ','Use Paytm UPI', 'Get upto ₹100 cashback with this code','PAYTMUPI', '• Offer applicable once per customer \n• Offer only applicable with Paytm UPI \n•Paytm cashback will be credited in your wallet within 24 hours of order completition\n• Other t&c may apply'),
    Step('₹10 - ₹100 Paytm cashback ','Use Paytm UPI', 'Get upto ₹100 cashback with this code','PAYTMUPI', '• Offer applicable once per customer \n• Offer only applicable with Paytm UPI \n•Paytm cashback will be credited in your wallet within 24 hours of order completition\n• Other t&c may apply'),
    Step('₹10 - ₹100 Paytm cashback ','Use Paytm UPI', 'Get upto ₹100 cashback with this code','PAYTMUPI', '• Offer applicable once per customer \n• Offer only applicable with Paytm UPI \n•Paytm cashback will be credited in your wallet within 24 hours of order completition\n• Other t&c may apply'),
    Step('₹10 - ₹100 Paytm cashback ','Use Paytm UPI', 'Get upto ₹100 cashback with this code','PAYTMUPI', '• Offer applicable once per customer \n• Offer only applicable with Paytm UPI \n•Paytm cashback will be credited in your wallet within 24 hours of order completition\n• Other t&c may apply'),
    // Step('Does Tiff have any special plans for health enthusiasts?', 'Yes, at Tiff we are taking care of healthy enthusiasts as well. These people will be assisted by dieticians and based on their requirements the professionals will guide them and suggest food that will be delivered to them.'),
    // Step('Is rescheduling available at different locations?', 'Tiff keeps two addresses namely home and work or can add their desired location. Rescheduling can be done easily at these places but with prior information given to us.'),
    // Step('What if I miss polling?', 'If by any chance customer misses polling then whatever majority has been selected will be delivered.'),
  ];
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: kLightGrey,
      child: Padding(
        padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/89.72), //left=right=20 top=10
        child: Column(
          children: [
            AutoSizeText('Best offers for you!!',style: kH3Heading,),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                  itemCount: _steps.length,
                  itemBuilder: (_, index) {
                    final item = _steps[index];
                    return Card(
                      clipBehavior: Clip.none,
                      shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                      ),
                      color: kLightGrey,
                      elevation: 4,
                      child: Container(
                        //height: 130,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: screenHeight/89.72), //bottom10
                          child: ExpansionTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                              borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                            ),
                            backgroundColor: kWhiteColor,
                            collapsedTextColor: kBlackColor,
                            textColor: kBlackColor,
                            iconColor: kBlackColor,
                            collapsedIconColor: kBlackColor,
                            childrenPadding: EdgeInsets.only(bottom: screenHeight/89.72, left: screenWidth/21.17,right: screenWidth/21.17), //height20 width20
                            expandedCrossAxisAlignment: CrossAxisAlignment.end,
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:EdgeInsets.only(top:screenHeight/89.72), //top10
                                  child: ShaderMask(blendMode: BlendMode.srcATop,
                                      shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),child: AutoSizeText(item.title, style: kBodyTextBoldBlackMedium)),
                                ),
                                //SizedBox(height: 5,),
                                AutoSizeText(item.title2,style: kB1BodyText,),
                                //SizedBox(height: 5,),
                                AutoSizeText(item.title3,style: kB1BodyText,),
                                SizedBox(height:15 ,),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    gradient: kPrimaryGradientColor,
                                    border: Border.all(color: kLightGrey),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: AutoSizeText(
                                        item.code,style: kButtonText,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Divider(
                                      color: kLightGrey,
                                      thickness: 2,
                                    ),
                                    SizedBox(height: 5,),
                                    AutoSizeText(item.body, style: kB1BodyText,)
                                  ],
                                //DividerWidget(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
