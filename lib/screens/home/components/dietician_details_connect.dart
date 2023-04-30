import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:progress_timeline/progress_timeline.dart';
import 'package:tiffin/utils/AppColors.dart';

import '../../../utils/constants.dart';
import '../../../widgets/AppBarWidget.dart';
import '../../../widgets/default_button.dart';
import 'dietician_support.dart';

class DieticianDetails extends StatefulWidget {
  const DieticianDetails({Key? key}) : super(key: key);
  static String routeName ="\dietician_details";

  @override
  State<DieticianDetails> createState() => _DieticianDetailsState();
}

class _DieticianDetailsState extends State<DieticianDetails> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight/17.94),
          child: AppBarWidget(text:'')),
      body: SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight/44.86,bottom: screenHeight/44.86 ,left: screenWidth/21.17, right: screenWidth/21.17), //top20,left=right=20
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Dietician Details',
                  style: kH1Heading,
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                AutoSizeText("Get in touch with your dietician for any follow ups or details.",style:kB1BodyText),
                SizedBox(
                  height: screenHeight/44.86, //height20
                ),
                SizedBox(height: screenHeight/44.86,), //height20
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)),//width5
                    color: kWhiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight/89.725,bottom: screenHeight/89.725,left: screenWidth/42.352,right: screenWidth/42.352), //height=width=10
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(screenWidth/84.705)),//width5
                                color: kLightGrey,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal:screenWidth/84.705,vertical:screenHeight/179.451),//all5
                                child: Icon(Icons.medical_information),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth/42.35, //width10
                            ),
                            AutoSizeText(
                              'Dietcian appointed',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ],
                        ),
                        Divider(),
                        SizedBox(height: screenHeight/89.72), //height10
                        AutoSizeText(
                          'Dr Richa Singhania',
                          style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        AutoSizeText(
                          'She is an experienced dietician with more than 5 years of experience in the field. She has expertise in creating personalized nutrition plans and providing dietary advice to clients based on their individual needs and health goals. Her extensive knowledge in nutrition has helped many clients achieve their desired results and maintain a healthy lifestyle.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: screenHeight/89.72), //height10
                      ],
                    ),
                  ),
                ),
                Spacer(),
                MaterialButton(
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => customerHealthCard()));
                    },
                    padding: const EdgeInsets.only(right: 0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF009688),
                            Color(0xFF4CAF50),
                            Color(0xFF8BC34A)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(screenWidth/84.705)), //width5
                      ),
                      child: Container(
                          constraints: BoxConstraints(
                            minWidth: screenWidth/7.05, //width60
                            minHeight: screenHeight/14.95, //height60
                          ), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: AutoSizeText(
                            'View your health card',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize:16,
                              fontWeight: FontWeight.w700,
                              color: kWhiteColor,
                              height: 1,
                            ),
                          )),
                    )),
                SizedBox(height: screenHeight/89.72), //height10
                DefaultButton(
                  text: 'Message',
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DieticianSupport()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
