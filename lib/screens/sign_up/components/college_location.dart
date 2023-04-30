//import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiffin/screens/sign_up/components/search_address/searchAddress.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/components/input_field.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/AppBarWidget.dart';
import '../../../widgets/screen_heading.dart';
import 'home_location.dart';

class CollegeLocation extends StatefulWidget {
  // final String phoneNumber,name,email,password;
  // final bool isStudent;
  CollegeLocation({Key? key}) : super(key: key);
  static String routeName = "/college_location";

  @override
  State<CollegeLocation> createState() => _CollegeLocationState();
}

class _CollegeLocationState extends State<CollegeLocation> {
  // final String phoneNumber,name,email,password;
  // final bool isStudent;
  final ImagePicker _picker = ImagePicker();

  Future pickImage()async{
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  }
  //final XFile? image = await _picker.pickImage(source: ImageSource.gallery);


  final _collegeNameController = TextEditingController();
  final _collegeAddressController = TextEditingController();
  final _collegeLandmarkController = TextEditingController();
  final _collegePincodeController = TextEditingController();
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
                    'Set college location',
                    style: kH1Heading,
                  ),
                  SizedBox(height: screenHeight/89.72,), //height10
                  AutoSizeText(
                    'Mind sharing your college address to ensure smooth delivery without any hassle!',
                    style: kH2Heading,
                  ),
                  SizedBox(height: screenHeight/22.43,), //height40
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "College name",
                    inputType: TextInputType.text,
                    controller : _collegeNameController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Building / Floor / Area",
                    inputType: TextInputType.text,
                    controller : _collegeAddressController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "Any landmark near your college",
                    inputType: TextInputType.text,
                    controller : _collegeLandmarkController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  InputField(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    hintText: "College Pincode",
                    inputType: TextInputType.text,
                    controller : _collegePincodeController,
                  ),
                  SizedBox(
                    height: screenHeight/89.72, //height10
                  ),
                  Expanded(child: SearchAddress()),
                 // Divider(),
                  MaterialButton(
                    onPressed: (){
                      pickImage();
                      print(pickImage());
                    },
                    padding: EdgeInsets.only(right: 0.0),
                    child: Container(
                      // width: double.infinity,
                      // height: screenHeight/17.94, //height40
                      constraints: BoxConstraints(
                        minWidth: screenWidth/7.058, //width60
                        minHeight: screenHeight/14.954, //height60
                      ), //
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(screenWidth/84.705),
                          color: Colors.white
                      ),
                      child: Center(child: AutoSizeText(" Upload College Id",style: kB1BodyText,)),
                    ),
                  ),
                  SizedBox(height: screenHeight/44.86,), //height20
                  DefaultButton(text:'Add your home address', press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeLocation()));
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