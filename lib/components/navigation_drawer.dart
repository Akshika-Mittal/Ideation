import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tiffin/screens/profile/profile_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/components/menu_items.dart';
import 'package:tiffin/screens/about_us/about_us_screen.dart';
import 'package:tiffin/screens/cancellation_policy/cancellation_policy_screen.dart';
import 'package:tiffin/screens/customer_support/customer_support_screen.dart';
import 'package:tiffin/screens/feedback/feedback_screen.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/screens/polling/menu_selection/menu_selection_screen.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';
import 'package:tiffin/screens/subscription_plan/subscription_plan_screen.dart';

import 'package:tiffin/screens/faq/faq_screen.dart';

import '../screens/order_history/order_history_screen.dart';
import '../screens/out_of_service/out_of_service_screen.dart';
import '../screens/payment_options/payment_options_screen.dart';
import '../screens/tiff_credits/tiff_credit_screen.dart';
import '../services/customer_services.dart';
import '../utils/url_constants.dart';
import '../widgets/AppBarWidget.dart';
import '../widgets/default_button.dart';
import '../widgets/screen_heading.dart';
import 'package:http/http.dart' as http;
class NavigationDrawerWidget extends StatefulWidget {

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final CustomerServices _customerService = CustomerServices();
  late Future<Map<String, dynamic>> _customerDetailsFuture;
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final String name ="Akshika";
    final String customerId ="TIFF1234";

    //final String customerId = 'INR123456';
    final int mobileNo = 123456;
    final String address = "610/304/1, Dariyabad Allahabad dfghjkmoiuygfdswertgyhujikoiuyhgfcdxder5t6y78u9i0ijuh";
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    // final CustomerServices _customerService = CustomerServices();
    // late Future<Map<String, dynamic>> _customerDetailsFuture;
    // final String sessionId;
    // void initState(){
    //   super.initState();
    //   _customerDetailsFuture=_customerService.getCustomerDetails(widget.sessionId);
    // }
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(screenHeight/17.94),
          child: AppBarWidget(text:'')),
      body: Container(
                width: screenWidth,
                color: kLightGrey,
                padding: EdgeInsets.only(left: screenWidth / 21.17,
                    right: screenWidth / 21.17,
                    bottom: screenHeight / 17.945), //top=70, bottom=50
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: screenHeight / 8.9725,
                          //height100
                          width: screenWidth / 4.235,
                          //child: pickedImage==null? AssetImage('assets/images/G60.png') : FileImage(File(pickedImage.path)),
                          decoration: BoxDecoration(
                            border:
                            Border.all(color: kWhiteColor,
                                width: screenWidth / 105.88 / 2),
                            borderRadius: BorderRadius.circular(
                                screenWidth / 4.23), //width100
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/profile_image.jpg',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight / 44.862, //height20
                        ),
                        AutoSizeText(
                          name,
                          style: kBodyHeading1TextBoldBlack,
                        ),
                        SizedBox(
                          height: screenHeight / 179.450, //height5
                        ),
                        AutoSizeText(
                          customerId,
                          style: kH2Heading,
                        ),
                        SizedBox(height: screenHeight / 44.86,), //height20
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => ProfileScreen()));
                          },
                          padding: EdgeInsets.only(right: 0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: kPrimaryGradientColor,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(screenWidth / 84.705)),
                            ),
                            child: Container(
                                width: screenWidth / 3.13, //width135
                                constraints: BoxConstraints(
                                  //width60
                                  minHeight: screenHeight / 22.43, //height40
                                ), // min sizes for Material buttons
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  'View Your Profile',
                                  minFontSize: 12,
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: kWhiteColor,
                                    height: 1,
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(height: screenHeight / 22.431,), //height40
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: screenHeight / 89.725,
                                bottom: screenHeight / 89.725,
                                left: screenWidth / 42.352,
                                right: screenWidth / 42.352), //height=width-10
                            child: Column(
                              children: [
                                DrawerItem(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  itemIcon: IconData(
                                      0xe759, fontFamily: 'MaterialIcons'),
                                  itemName: "Orders",
                                  press: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            OrderHistoryScreen()));
                                  },
                                ),
                                Divider(),
                                DrawerItem(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  itemIcon: IconData(
                                      0xf0057, fontFamily: 'MaterialIcons'),
                                  itemName: "Payments",
                                  press: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            OutOfServiceScreen()));
                                  },
                                ),
                                Divider(),
                                DrawerItem(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  itemIcon: IconData(
                                      0xf67d, fontFamily: 'MaterialIcons'),
                                  itemName: "Credits",
                                  press: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            TiffCreditsScreen()));
                                  },
                                ),
                                Divider(),
                                DrawerItem(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  itemIcon: IconData(
                                      0xe57f, fontFamily: 'MaterialIcons'),
                                  itemName: "Settings",
                                  press: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            SettingsScreen()));
                                  },
                                ),
                                Divider(),
                                DrawerItem(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  itemIcon: const IconData(
                                      0xf04f, fontFamily: 'MaterialIcons'),
                                  itemName: "Feedback",
                                  press: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            FeedbackScreen()));
                                  },
                                ),
                                Divider(),
                                DrawerItem(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  itemIcon: IconData(
                                      0xf815, fontFamily: 'MaterialIcons'),
                                  itemName: "About Us",
                                  press: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => AboutUs()));
                                  },
                                ),
                                Divider(),
                                DrawerItem(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  itemIcon: IconData(
                                      0xf403, fontFamily: 'MaterialIcons'),
                                  itemName: "Customer Support",
                                  press: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            CustomerSupport()));
                                  },
                                ),
                                Divider(),
                                DrawerItem(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  itemIcon: IconData(
                                      0xef28, fontFamily: 'MaterialIcons'),
                                  itemName: "Cancellation Policy",
                                  press: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            CancelationPolicy()));
                                  },
                                ),
                                Divider(),
                                DrawerItem(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  itemIcon: IconData(
                                      0xf0555, fontFamily: 'MaterialIcons'),
                                  itemName: "FAQ",
                                  press: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => FAQScreen()));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    DefaultButton(
                      text: 'Logout',
                      press: () {},
                    ),
                  ],
                ),
                ),
              );
  }
}
class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.itemName,
    required this.itemIcon,
    required this.press,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String itemName;
  final IconData itemIcon;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(screenWidth/84.705),  //width5
            ),
            child: Container(
              decoration: BoxDecoration(
                color: kLightGrey,
                borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
              ),
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight/179.450,bottom: screenHeight/179.450,left: screenWidth/84.705,right: screenWidth/84.705), //height=width=5
                child: Icon(itemIcon,size: 20,),
              ),
            ),
          ),
          SizedBox(width: screenWidth/42.352,),
          AutoSizeText(itemName,style: kB1BodyText,),
        ],
      ),
    );
  }
}
