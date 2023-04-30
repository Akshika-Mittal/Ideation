import 'dart:convert';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/bean/customer_details_bean.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/screens/sign_up/components/search_address/searchAddress.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:http/http.dart' as http;
import '../../../utils/dimensions.dart';
import '../../../utils/url_constants.dart';
import '../../../widgets/AppBarWidget.dart';
import 'package:tiffin/components/input_field.dart';
import '../../../widgets/screen_heading.dart';
import '../../sign_in/sign_in_screen.dart';

class HomeLocation extends StatefulWidget {
  const HomeLocation({Key? key}) : super(key: key);
  static String routeName = "/home_location";

  @override
  State<HomeLocation> createState() => _HomeLocationState();
}

class _HomeLocationState extends State<HomeLocation> {
  final _homeNameController = TextEditingController();
  final _homeAddressController = TextEditingController();
  final _homeLandmarkController = TextEditingController();
  final _homePincodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight/17.94),
          child: AppBarWidget(text:''),
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
                    'Set home location',
                    style: kH1Heading
                  ),
                  SizedBox(height: screenHeight/89.72,), //height10
                  AutoSizeText(
                    'To ensure hassle-free delivery, please provide your home address.',
                    style: kH2Heading,
                  ),
                  SizedBox(height: screenHeight/22.43,), //height40
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Home / Apartment / Flat",
                    inputType: TextInputType.text,
                    controller : _homeNameController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Street/ Locality / Area",
                    inputType: TextInputType.text,
                    controller : _homeAddressController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Any landmark near your home",
                    inputType: TextInputType.text,
                    controller : _homeLandmarkController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Home Pincode",
                    inputType: TextInputType.text,
                    controller : _homePincodeController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  Expanded(child: SearchAddress()),
                  DefaultButton(text: 'Done', press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  }
                  //   {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  // },
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}


