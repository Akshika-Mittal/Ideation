//import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiffin/screens/order_details/components/checkout_payment.dart';
import 'package:tiffin/screens/sign_up/components/search_address/searchAddress.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';

import '../../../utils/dimensions.dart';
import '../../../widgets/AppBarWidget.dart';
import '../../../widgets/screen_heading.dart';
import '../../polling/menu_selection/menu_selection_screen.dart';

class NewAddress extends StatefulWidget {
  const NewAddress({Key? key}) : super(key: key);
  static String routeName = "/new_address";

  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
  final _collegeNameController = TextEditingController();
  final _buildingNameController = TextEditingController();
  final _directionController = TextEditingController();

  // final ImagePicker _picker = ImagePicker();
  // Future pickImage()async{
  //   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  // }
  //final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar:PreferredSize(
            preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
            child: AppBarWidget(text:'')),
        body: SafeArea(
          child: Container(
            color: kLightGrey,
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight/44.862 ,bottom: screenHeight/44.862,left:screenWidth/21.176,right:screenWidth/21.176), //height20,width20
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Add another location',
                    style: kH1Heading,
                  ),
                  SizedBox(height: screenHeight/89.72,), //height10
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Apartment name / Area / Block No",
                    inputType: TextInputType.text,
                    controller : _collegeNameController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Building / Floor",
                    inputType: TextInputType.text,
                    controller : _buildingNameController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Direction to reach",
                    inputType: TextInputType.text,
                    controller : _directionController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  Expanded(child: SearchAddress()),
                  DefaultButton(text:'Continue', press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentCheckout()));
                  },
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.hintText,
    required this.inputType,
    required this.controller,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final String hintText;
  final TextInputType inputType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight/16.313, //height55
      decoration: BoxDecoration(
        //border: Border.all(width: 1, color: Colors.white),
        borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
        color: kWhiteColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: screenWidth/28.23),
        child: TextField(
          onChanged: (value) {
            // phone=value;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            enabledBorder:InputBorder.none,
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: kB1BodyText,

          ),
          keyboardType: inputType,// set the keyboard type to number
          controller: controller,
          cursorColor: kDividerColor,
          style: kB1BodyText,
        ),
      ),
    );
  }
}

