
import 'dart:io';
import 'dart:core';
import 'package:image_picker/image_picker.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:get/get.dart';

import '../../../services/customer_services.dart';


class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String customer_email = "akshika@99gmail.com"; // personal details

  //int valet_locality_serving = 5; //Subscription data
  //int valet_service_radius = 8; //Subscription data

  //String hub_address_State = "Karnataka"; // personal details


  bool _isEditingText = false;
  late TextEditingController _editingController;
  late String initialText = customer_email;

  File? _imageFiles;
  final _picker = ImagePicker();
  void photChange() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    print('PickedFile: ${pickedFile.toString()}');
    if (pickedFile != null) {
      print('PickedFile: ${pickedFile.toString()}');
      setState(() {
        _imageFiles = File(pickedFile.path); // Exception occurred here
      });
    } else {
      print('PickedFile: is null');
    }
  }

  // final CustomerServices _customerService = CustomerServices();
  // late Future<Map<String, dynamic>> _customerDetailsFuture;
  // void initState(){
  //   super.initState();
  //   _editingController = TextEditingController(text: initialText);
  //   _customerDetailsFuture=_customerService.getCustomerDetails(widget.sessionId);
  // };
  bool isSubscribed = true;
  String customer_name = "Akshika";
  String customer_id = "Tiff1234";
  String customer_mobile_number = "94123456789"; // personal details
  //String customer_email = "akshika@gmail.com"; // personal details
  //String customer_home_name = customer[0]['homeName'];; // personal details
  String customer_home_address = "George Town";
  String customer_office_address = "Gurgaon";
  String plan_subscribed = "-"; //Subscription data
  String plan_start_date = "-"; //Subscription data
  String plan_end_date = "-"; //Subscription data
  String home_hub_assigned = "-"; //Subscription data
  String office_hub_assigned = "-"; //Subscription data
  int lunch_delivered = 0; //Subscription dataa
  int dinner_delivered = 0;//Subscription dataa
  bool customer_subscription=true;
  double customer_weight=70.1;
  double customer_height=167;
  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
              length: 3,
              child: Container(
                color: kLightGrey,
                child: Stack(
                  children: [
                    //For valet Image,name and id
                    Positioned(
                      top: screenHeight / 44.86, //height20
                      child: Container(
                        width: screenWidth,
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      //customer Profile
                                      Container(
                                        height: screenHeight / 8.97,
                                        //height100
                                        width: screenWidth / 4.23,
                                        //width100
                                        //child: pickedImage==null? AssetImage('assets/images/G60.png') : FileImage(File(pickedImage.path)),
                                        decoration: BoxDecoration(
                                          border:
                                          Border.all(
                                              color: kWhiteColor, width: 2),
                                          borderRadius: BorderRadius.circular(
                                              screenWidth / 4.23), //width100
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: (_imageFiles != null)
                                                ? FileImage(
                                                _imageFiles!) as ImageProvider
                                                : AssetImage(
                                                'assets/images/profile_image.jpg'),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              photChange();
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              gradient: kPrimaryGradientColor,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: kWhiteColor, width: 2),
                                            ),
                                            child: Icon(
                                              Icons.edit,
                                              color: kWhiteColor,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight / 44.86, //height20
                              ),
                              AutoSizeText(
                                  customer_name,
                                  style: kBodyTextBoldBlackMedium
                              ),
                              SizedBox(
                                height: screenHeight / 179.451, //height5
                              ),
                              AutoSizeText(
                                  customer_id,
                                  style: kH2Heading
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: screenHeight / 8.97 + screenHeight / 8.97,
                      //height200
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              screenWidth / 84.705), //width5
                          //color: Colors.white,
                        ),
                        width: screenWidth,
                        height: screenHeight,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: screenHeight / 44.86,
                              left: screenWidth / 42.35,
                              bottom: screenHeight / 89.72,
                              right: screenWidth / 21.17),
                          //bottom10 top20 left10 //right20
                          child: Column(
                            children: [
                              TabBar(
                                  indicator: BoxDecoration(
                                      gradient: kPrimaryGradientColor,
                                      borderRadius: BorderRadius.circular(
                                          screenWidth / 84.705)), //widhth5
                                  unselectedLabelColor: kBlackColor,
                                  tabs: [
                                    Tab(
                                      text: 'Personal',
                                    ),
                                    Tab(
                                      text: 'Plan Subscribed',
                                    ),
                                    Tab(
                                      text: 'Edit Profile',
                                    )
                                  ]),
                              SizedBox(
                                height: screenHeight / 44.86, //height20
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth / 42.35,
                                    vertical: screenHeight / 89.72), //all10
                                child: SizedBox(
                                  height: screenHeight / 2.99 +
                                      screenHeight / 6.90 + screenHeight / 7.47,
                                  //hright450
                                  child: TabBarView(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(
                                                  screenWidth / 84.705),
                                              //width5
                                              color: kWhiteColor),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: screenWidth / 42.35,
                                                vertical: screenHeight / 89.72),
                                            //all10
                                            child: Column(
                                              children: [
                                                PersonalData(
                                                  screenWidth: screenWidth,
                                                  screenHeight: screenHeight,
                                                  info: customer_email,
                                                  iconInfo: Icons.email_rounded,
                                                ),
                                                Divider(),
                                                PersonalData(
                                                  screenWidth: screenWidth,
                                                  screenHeight: screenHeight,
                                                  info: customer_mobile_number,
                                                  iconInfo: Icons.phone,
                                                ),
                                                Divider(),
                                                PersonalData(
                                                  screenWidth: screenWidth,
                                                  screenHeight: screenHeight,
                                                  info: customer_home_address,
                                                  iconInfo: Icons.home_rounded,
                                                ),
                                                Divider(),
                                                PersonalData(
                                                  screenWidth: screenWidth,
                                                  screenHeight: screenHeight,
                                                  info: customer_office_address,
                                                  iconInfo: Icons.business_rounded,
                                                ),
                                                Divider(),
                                                PersonalData(
                                                  screenWidth: screenWidth,
                                                  screenHeight: screenHeight,
                                                  info: customer_height.toString(),
                                                  iconInfo: Icons.height,
                                                ),
                                                Divider(),
                                                PersonalData(
                                                  screenWidth: screenWidth,
                                                  screenHeight: screenHeight,
                                                  info: customer_weight.toString(),
                                                  iconInfo: Icons.height_rounded,
                                                ),
                                              ],
                                            ),
                                          )),
                                      //holds subscription details
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                screenHeight / 179.451),
                                            color: kWhiteColor),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: screenWidth / 42.35,
                                              vertical: screenHeight / 89.72),
                                          //all10
                                          child: Column(
                                            children: [
                                              SubscriptionDetails(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: plan_subscribed,
                                                iconInfo: Icons.account_circle,
                                                dataHeading: 'Plan Subscribed',
                                              ),
                                              Divider(),
                                              SubscriptionDetails(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: plan_subscribed,
                                                iconInfo: Icons.account_circle,
                                                dataHeading: 'Plan Start Date',
                                              ),
                                              Divider(),
                                              SubscriptionDetails(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: plan_start_date,
                                                iconInfo: Icons.account_circle,
                                                dataHeading: 'Plan Subscribed',
                                              ),
                                              Divider(),
                                              SubscriptionDetails(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: plan_end_date,
                                                iconInfo: Icons.account_circle,
                                                dataHeading: 'Plan End Date',
                                              ),
                                              Divider(),
                                              SubscriptionDetails(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: lunch_delivered
                                                    .toString(),
                                                iconInfo: Icons.account_circle,
                                                dataHeading: 'Lunch Delivered',
                                              ),
                                              Divider(),
                                              SubscriptionDetails(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: dinner_delivered
                                                    .toString(),
                                                iconInfo: Icons.account_circle,
                                                dataHeading: 'Dinner Delivered',
                                              ),
                                              Divider(),
                                              SubscriptionDetails(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: home_hub_assigned,
                                                iconInfo: Icons.home,
                                                dataHeading: 'Home Hub Assigned',
                                              ),
                                              Divider(),
                                              SubscriptionDetails(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: office_hub_assigned,
                                                iconInfo: Icons.business,
                                                dataHeading: 'Office Hub Assigned',
                                              ),
                                              Divider(),
                                            ],
                                          ),
                                        ),
                                      ),

                                      //edit profile
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                screenWidth / 84.705), //width5
                                            color: kWhiteColor),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: screenWidth / 42.35,
                                              vertical: screenHeight / 89.72),
                                          //all10
                                          child: Column(
                                            children: [
                                              EditPersonalData(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: customer_email,
                                                field: "Email",
                                                iconInfo: Icons.email_rounded,
                                              ),
                                              Divider(),
                                              EditPersonalData(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: customer_mobile_number,
                                                field: "Phone Number",
                                                iconInfo: Icons.phone,
                                              ),
                                              Divider(),
                                              EditPersonalData(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: customer_home_address,
                                                field: "Home Address",
                                                iconInfo: Icons.home_rounded,
                                              ),
                                              Divider(),
                                              EditPersonalData(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: customer_office_address,
                                                field: "Office Address",
                                                iconInfo: Icons.business_rounded,
                                              ),
                                              Divider(),
                                              EditPersonalData(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: customer_height.toString(),
                                                field: "Height",
                                                iconInfo: Icons.height,
                                              ),
                                              Divider(),
                                              EditPersonalData(
                                                screenWidth: screenWidth,
                                                screenHeight: screenHeight,
                                                info: customer_weight.toString(),
                                                iconInfo: Icons.height_rounded,
                                                field: "Weight",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}

class SubscriptionDetails extends StatelessWidget {
  const SubscriptionDetails({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.info,
    required this.iconInfo,
    required this.dataHeading
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String info;
  final IconData iconInfo;
  final String dataHeading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration:BoxDecoration(
                  color: kLightGrey,
                  borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth/105.88,vertical: screenHeight/224.31), //height4 width4
                child: Icon(
                  iconInfo,
                ),
              ),
            ),
            SizedBox(width: screenWidth/21.17,), //width20
            AutoSizeText(
                dataHeading,
                style: kB1BodyTextBlack
            ),
          ],
        ),
        AutoSizeText(
          info,
          style: kB1BodyTextBlack
        ),
      ],
    );
  }
}

class PersonalData extends StatelessWidget {
  const PersonalData({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.info,
    required this.iconInfo,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String info;
  final IconData iconInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment:
      // MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration:BoxDecoration(
            color: kLightGrey,
            borderRadius: BorderRadius.circular(screenWidth/84.705) //width5
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth/105.88,vertical: screenHeight/224.31), //height4 width4
            child: Icon(
              iconInfo,
            ),
          ),
        ),
        SizedBox(width: screenWidth/21.17,), //width20
        Expanded(
          child: AutoSizeText(
            info,
            style: kB1BodyTextBlack,
          ),
        ),
      ],
    );
  }
}

class EditPersonalData extends StatefulWidget {
  EditPersonalData({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.info,
    required this.field,
    required this.iconInfo,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  String info;
  String field;
  final IconData iconInfo;

  @override
  State<EditPersonalData> createState() => _EditPersonalDataState(field:field,info:info,screenWidth:screenWidth,screenHeight: screenHeight,iconInfo:iconInfo);
}

class _EditPersonalDataState extends State<EditPersonalData> {
  final double screenWidth;
  final double screenHeight;
  String info;
  String field;
  final IconData iconInfo;
  _EditPersonalDataState( {required this.field,required this.info,required this.screenWidth,required this.screenHeight,required this.iconInfo});
  @override
  Widget build(BuildContext context) {
    void _showDialog() async {
      String? result = await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          print(field);
          return MyDialog(initialValue:widget.info,fieldName:field);
        },
      );
      if (result != null) {
        setState(() {
          widget.info= result;
        });
      }
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.screenWidth/105.88,vertical: widget.screenHeight/224.31), //height4 width4
          child: Icon(
            iconInfo,
          ),
        ),
        SizedBox(width: widget.screenWidth/21.17,), //width20
        Expanded(
          child: AutoSizeText(
            widget.info,
            style: kB1BodyTextBlack,
          ),
        ),
        GestureDetector(
          onTap: _showDialog,
          child: ShaderMask(
              blendMode: BlendMode.srcATop,
              shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
              child: AutoSizeText("Edit",style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyDialog extends StatefulWidget {
  final String initialValue;
  final String fieldName;

  const MyDialog({Key? key, required this.initialValue,required this.fieldName}) : super(key: key);

  @override
  _MyDialogState createState() => _MyDialogState(fieldName:fieldName,initialValue:initialValue);
}
class _MyDialogState extends State<MyDialog> {
  final String initialValue;
  final String fieldName;
  _MyDialogState({required this.fieldName,required this.initialValue});
  late TextEditingController _controller;
  // final CustomerServices _customerService = CustomerServices();
  // late Future<Map<String, dynamic>> _customerDetailsFuture;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);

  }
  // Future<void> UpdateDetails(BuildContext ctx) async{
  //   _customerDetailsFuture=_customerService.updateCustomerDetails(fieldName,_controller.text);
  //   print(_customerDetailsFuture);
  // }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return AlertDialog(
      title: Text('Edit Text'),
      content: TextField(
        controller: _controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left:screenWidth/42.35,top: screenHeight/44.86,bottom: screenHeight/44.86), //left10 //height20
          hintText: 'Enter value',
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: (){
                  // UpdateDetails(context);
                  Navigator.pop(context, _controller.text);},
                child: Container(
                  // width: MediaQuery.of(context).size.width/2-5,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradientColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('Save',style: kSmallButtonText,))),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: (){Navigator.pop(context);},
                child: Container(
                  // width: MediaQuery.of(context).size.width/2-5,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradientColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('Cancel',style: kSmallButtonText,))),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
