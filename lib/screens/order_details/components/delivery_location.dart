import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:progress_timeline/progress_timeline.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/screens/order_details/components/checkout_payment.dart';

import '../../../utils/AppColors.dart';
import '../../../utils/constants.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/AppBarWidget.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/screen_heading.dart';
import 'package:tiffin/screens/delivery_location/components/body.dart';

import 'new_address.dart';

class CheckoutDeliveryLocationScreen extends StatefulWidget {
  const CheckoutDeliveryLocationScreen({Key? key}) : super(key: key);
  static String routeName = "/checkout_delivery_location";

  @override
  State<CheckoutDeliveryLocationScreen> createState() => _CheckoutDeliveryLocationScreenState();
}

class _CheckoutDeliveryLocationScreenState extends State<CheckoutDeliveryLocationScreen> {

  // late ProgressTimeline progressTimeline;
  //
  // List<SingleState> states =[
  //   SingleState(stateTitle: 'Order Details'),
  //   SingleState(stateTitle: 'Delivery Location'),
  //   SingleState(stateTitle: 'Payment'),
  // ];

  bool isChecked = false;
  bool isHomePressed = false;
  bool isOfficePressed = false;
  bool anotherLocation=false;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'')),
      body: SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding:EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,), //left=right=20 , top=10
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //progressTimeline,
                Stack(
                  children: [
                    Container(
                      height: screenHeight-400,
                      width: double.infinity,
                      child: GoogleMap(
                      myLocationEnabled: true,
                      initialCameraPosition: CameraPosition(
                      target:LatLng(
                        25.443920,81.825027
                      ),
                      zoom:10,
                      ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:screenWidth/28.23,right: screenWidth/28.23,top: screenHeight/58.91), //all15
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                              // enabledBorder:InputBorder.none,
      // border: InputBorder.none,
    // focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: screenWidth/21.17,right: screenWidth/84.705,bottom: screenHeight/179.451), //right5 bottom5left20
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                            borderSide: BorderSide(color: kWhiteColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kWhiteColor),
                            borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                          ),
                          fillColor:kWhiteColor,
                          hintText: 'Enter your location',
                          hintStyle: kB1BodyText,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight/44.86,), //height20
                AutoSizeText(
                    'Choose your delivery location',
                      style: kBodyHeading1Text,
                ),
                SizedBox(height: screenHeight/44.86,), //height20
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:MaterialButton(
                        onPressed: () {
                        setState(() {
                          isHomePressed=true;
                          isOfficePressed=false;
                        });
                      },
                      padding: EdgeInsets.only(right: 0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                        gradient: isHomePressed? LinearGradient(
                        colors: [
                          Color(0xFF8639B1),
                          Color(0xFFEB2133),
                          Color(0xFFFD9E41)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ):LinearGradient(
                        colors: [
                          kWhiteColor,kWhiteColor
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                        borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)), //width5,
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                          minWidth: screenWidth/14.11, //width30
                          minHeight: screenHeight/22.43, //height40
                        ), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'HOME',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize:16,
                            fontWeight: FontWeight.w700,
                            color:isHomePressed?kWhiteColor:kBlackColor,
                            height: 1,
                          ),
                        )),
                      )),
                    ),
                    SizedBox(width:screenWidth/21.17,), //width20
                    Expanded(
                      child:MaterialButton(
                      onPressed: () {
                        setState(() {
                          isHomePressed=false;
                          isOfficePressed=true;
                        });
                      },
                      padding: EdgeInsets.only(right: 0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                        gradient: isOfficePressed? LinearGradient(
                        colors: [
                          Color(0xFF8639B1),
                          Color(0xFFEB2133),
                          Color(0xFFFD9E41)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        ):LinearGradient(
                          colors: [
                            kWhiteColor,kWhiteColor
                            ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)), //width5
                        ),
                        child: Container(
                          constraints: BoxConstraints(
                              minWidth: screenWidth/14.11, //width30
                              minHeight: screenHeight/22.43, ),//height40), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: AutoSizeText(
                            'OFFICE',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize:16,
                              fontWeight: FontWeight.w700,
                              color: isOfficePressed?kWhiteColor:kBlackColor,
                              height: 1,
                            ),
                          )),
                        )),
                      )
                    ],
                  ),
                    SizedBox(height:screenHeight/89.72 ,), //height10
                  CheckboxListTile(
                    title: AutoSizeText('Want to add another location of delivery?',style: kB1BodyTextBlack,),
                    activeColor: Colors.redAccent,
                    checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth/84.705)),//width5
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isOfficePressed=false;isHomePressed=false;
                        isChecked = value ?? false;
                        if (isChecked) {
                          isOfficePressed=false;isHomePressed=false;
                          anotherLocation=true;
                          print(anotherLocation);
                        } else {
    // Perform specific action when checkbox is unchecked
                            anotherLocation=false;
                            print(anotherLocation);
                          }
                        });
                      },
                  ),
                SizedBox(height: screenHeight/89.72,), //height10
                  MaterialButton(
                    onPressed: () {
                      if(isOfficePressed==false && isHomePressed==false &&anotherLocation==false){
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Align(alignment:Alignment.center,child: Text('ERROR',style: kBodyTextBoldBlackMedium,)),
                          content: Container(
                            height: screenHeight/7.47, //height120
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Please select your delivery location.',style: kH2Heading),
                                  SizedBox(height: screenHeight/29.90,), //height30
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: (){},
                                      child: Container(
                                        //width: MediaQuery.of(context).size.width/2-5,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              gradient: kPrimaryGradientColor,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(child: Text('Submit',style: kSmallButtonText,))),
                                    ),
                                  ),
                                ],
                            ),
                          ),
                        ),
                      );
                    }
                    else if(anotherLocation==true){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewAddress()));
                    }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentCheckout()));}
                    },
                    padding: const EdgeInsets.only(right: 0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                      gradient: LinearGradient(
                      colors: [
                        Color(0xFF8639B1),
                        Color(0xFFEB2133),
                        Color(0xFFFD9E41)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                      borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)), //width5
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: screenWidth/7.05, //width60
                        minHeight: screenHeight/14.95,
                      ), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        'Confirm',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          color: kWhiteColor,
                          height: 1,
                        ),
                      ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
      ),
        );
}
}
