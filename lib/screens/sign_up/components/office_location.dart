import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/sign_up/components/search_address/searchAddress.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';
import '../../../utils/AppColors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/AppBarWidget.dart';
import '../../../widgets/screen_heading.dart';
import 'package:tiffin/components/input_field.dart';

import 'home_location.dart';
class OfficeLocation extends StatefulWidget {
   OfficeLocation({Key? key,}) : super(key: key);
  static String routeName = "/office_location";

  @override
  State<OfficeLocation> createState() => _OfficeLocationState();
}

class _OfficeLocationState extends State<OfficeLocation> {
  final _officeNameController = TextEditingController();
  final _officeAddressController = TextEditingController();
  final _officeLandmarkController = TextEditingController();
  final _officePincodeController = TextEditingController();
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
                    'Set office location',
                    style: kH1Heading,
                  ),
                  SizedBox(height: screenHeight/89.72,), //height10
                  AutoSizeText(
                    'Mind sharing your office address to ensure smooth delivery without any hassle',
                    style: kH2Heading,
                  ),
                  SizedBox(height: screenHeight/22.43,), //height40
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Office Name",
                    inputType: TextInputType.text,
                    controller : _officeNameController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Building / Floor / Area",
                    inputType: TextInputType.text,
                    controller : _officeAddressController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Any landmark near your office",
                    inputType: TextInputType.text,
                    controller : _officeLandmarkController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Office Pincode",
                    inputType: TextInputType.text,
                    controller : _officePincodeController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),

                  Expanded(child: SearchAddress()),
                  DefaultButton(text: 'Add your home address', press:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeLocation()));
                  },),
                ],
              ),
            ),
          ),
        )
    );
  }
}


