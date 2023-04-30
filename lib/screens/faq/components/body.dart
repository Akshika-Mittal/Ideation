import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/divider_widget.dart';

import '../../../utils/AppColors.dart';

class Step {
  Step(
      this.title,
      this.body,
      [this.isExpanded = false]
      );
  String title;
  String body;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('What are the delivery hours?', 'For lunch our delivery hours are from 12:00 PM to 03:00 PM, and for dinner, it is 07:00 PM to 10:00 PM.'),
    Step('How do I know the status of my order?', 'The home page of the app will have a status update bar that will keep updating as the processes are completed.'),
    Step('How can I cancel my order?', 'Since Tiff offers bulk deliveries based on location, if a customer wants to cancel the order then prior information should be given. For lunch cancellation, the customer should inform by 10:00 Am and for dinner, it needs to be done by 4:00 PM.'),
    Step('Is it mandatory to avail of a subscription service?', 'No. It depends on the customer\'s needs. At tiff, we have both subscription-based as well as single orders.'),
    Step('How polling works?', 'At Tiff, we give our customers an option to vote for the next day\'s meal. In polling selection, the customer could poll from the dishes that could be prepared the next day and the dishes that receive the max poll will be served the next day. The polling service is transparent so the customer can see the results there.'),
    Step('How can I know about the subscription plans available?', 'There is an information page where all the details regarding each subscription plan are available. Customers can go through it and find all the answers, and if there is any query customer is free to contact customer service anytime.'),
    Step('Does Tiff have any special plans for health enthusiasts?', 'Yes, at Tiff we are taking care of healthy enthusiasts as well. These people will be assisted by dieticians and based on their requirements the professionals will guide them and suggest food that will be delivered to them.'),
    Step('Is rescheduling available at different locations?', 'Tiff keeps two addresses namely home and work or can add their desired location. Rescheduling can be done easily at these places but with prior information given to us.'),
    Step('What if I miss polling?', 'If by any chance customer misses polling then whatever majority has been selected will be delivered.'),
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
        padding: EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72), //left=right=20 top=10
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
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradientColor,
                    borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                  ),
                  child: ExpansionTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide.none,
                      borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                    ),
                    backgroundColor: kLightGrey,
                      collapsedTextColor: kWhiteColor,
                      textColor: kBlackColor,
                      iconColor: kBlackColor,
                      collapsedIconColor: kWhiteColor,
                      childrenPadding: EdgeInsets.symmetric(vertical:screenHeight/44.86 , horizontal: screenWidth/21.17), //height20 width20
                      expandedCrossAxisAlignment: CrossAxisAlignment.end,
                      title: AutoSizeText(item.title, style: TextStyle(
                        //color: kBlackColor,
                        fontSize: 14,
                      )),
                      children: [
                        //DividerWidget(),
                        AutoSizeText(item.body, style: kB1BodyText,
                          ),
                        ],
                  ),
                ),
              );
              }
            ),
      ),
    );
      }
}
