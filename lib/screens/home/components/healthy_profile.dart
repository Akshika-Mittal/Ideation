import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/AppColors.dart';
import '../../../widgets/AppBarWidget.dart';
import '../../../widgets/default_button.dart';
import 'dietician_update.dart';
class HealthyProfile extends StatefulWidget {
  const HealthyProfile({Key? key}) : super(key: key);
  static String routeName ="\healthy_profile";

  @override
  State<HealthyProfile> createState() => _HealthyProfileState();
}

class _HealthyProfileState extends State<HealthyProfile> {
  List<String> list = <String>['Gender', 'Female', 'Male','Others'];
  String? _selectedGender;
  String? _selectedGym,_selectedYoga,_selectedMeditation,_selectedFoodChoice;
  TextEditingController gender = new TextEditingController();
  TextEditingController age = new TextEditingController();
  TextEditingController height = new TextEditingController();
  TextEditingController weight = new TextEditingController();
  String bmi ="",bsa="",bmr="",ibw="",lbw="",lbm="",mmp="",bfp="";
  double _weight = 0.0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    void _onSubmit(){
      double _height = double.parse(height.text);
      _weight = double.parse(weight.text);
      int _age = int.parse(age.text);

      bmi =(_weight! / pow(_height! / 100, 2)).toStringAsFixed(2);
      bsa = sqrt(_height! * _weight! / 3600).toStringAsFixed(2);
      bmr = (655 + (9.6 * _weight!) + (1.8 * _height!) - (4.7 * _age!)).toStringAsFixed(2);
      ibw = (50 + 2.3 * (_height! / 2.54 - 60) + (_age! > 40 ? -2 : 0)).toStringAsFixed(2);
      lbw=  (50 + 2.3 * (_height! / 2.54 - 60) + (_age! > 40 ? -2 : 0)).toStringAsFixed(2);
      lbm=(0.407 * _weight! + 0.267 * _height! - 19.2).toStringAsFixed(2);
      bfp=((1.2 * double.parse(bmi)) + (0.23 * _age!) - 5.4).toStringAsFixed(2);
      mmp=((100-double.parse(bfp))).toStringAsFixed(2);
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kLightGrey,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight/17.94),
          child: AppBarWidget(text:'')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight/44.86, left: screenWidth/21.17, right: screenWidth/21.17,bottom: screenHeight/44.86), //top100,left=right=20
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Gracias Syed',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                      fontSize: 32),
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                AutoSizeText(
                  "We are excited to begin evaluating your health profile. Kindly provide us with your responses to the questions, which will help us gather more information about your health status.",
                  style: TextStyle(color: Color(0xff808080), fontSize: 14),
                ), SizedBox(
                  height: screenHeight/44.86, //height20
                ),
                Container(
                  //height: 200,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)), //width5
                    color: kWhiteColor,
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight/44.86,bottom:screenHeight/44.86, left: screenWidth/21.17, right: screenWidth/21.17), //top20,left=right=20
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText('Personal Profile',style: TextStyle( fontSize: 20,fontWeight:FontWeight.w600
                        ),),
                        Divider(),
                        SizedBox(height: screenHeight/89.72,), //height10
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                            color: kWhiteColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: screenWidth/42.35, right: screenWidth/42.35), //left=right=10
                            child: DropdownButton<String>(
                              underline: Container(
                                height: screenHeight/224.31/2, //height2
                                color: Colors.transparent,
                              ),
                              hint: AutoSizeText("Gender"),
                              value: _selectedGender,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedGender = newValue;
                                });
                              },
                              isExpanded: true,
                              dropdownColor: kWhiteColor,
                              items: <String>['Female', 'Male','Others']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: AutoSizeText(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight/89.72,), //height10


                        Container(
                          height: screenHeight/17.94+screenHeight/179.451, //height55
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color:kLightGrey),
                            borderRadius: BorderRadius.circular(screenWidth/42.35),
                            color: kLightGrey,
                          ),
                          child: TextField(
                            onChanged: (value) {
                              // phone=value;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: screenWidth/52.94), //legt8
                              //contentPadding: EdgeInsets.zero,
                              enabledBorder:InputBorder.none,
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintText: "Enter your age",
                            ),
                            controller: age,
                            keyboardType:
                            TextInputType.number, // set the keyboard type to number
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
                SizedBox(
                  height: screenHeight/44.86, //height20
                ),
                Container(
                  //height: 200,
                  width: screenWidth,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)),
                    color: kWhiteColor,
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight/44.86,bottom:screenHeight/44.86, left: screenWidth/21.17, right: screenWidth/21.17), //top20,left=right=20
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText('Anthropometric',style: TextStyle( fontSize: 20,fontWeight:FontWeight.w600
                        ),),
                        Divider(),
                        SizedBox(height:screenHeight/89.72,),
                        Container(
                          height:screenHeight/16.314,//height55
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kLightGrey),
                            borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                            color: kLightGrey,
                          ),
                          child: TextField(
                            onChanged: (value) {
                              // phone=value;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:screenWidth/52.94), //left8
                              border: InputBorder.none,
                              enabledBorder:InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Height in cms ",

                            ),
                            controller: height,
                            keyboardType:
                            TextInputType.number, // set the keyboard type to number
                          ),
                        ),
                        SizedBox(height:screenHeight/89.72,),
                        Container(
                          height: screenHeight/16.314,//height55
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kLightGrey),
                            borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                            color: kLightGrey,
                          ),
                          child: TextField(
                            onChanged: (value) {
                              // phone=value;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:screenWidth/52.94), //left8
                              border: InputBorder.none,
                              enabledBorder:InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Weight in kg",

                            ),
                            controller: weight,
                            keyboardType:
                            TextInputType.number, // set the keyboard type to number
                          ),
                        ),
                        SizedBox(height:screenHeight/89.72,),
                        Container(
                          height: screenHeight/16.314,//height55
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kLightGrey),
                            borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                            color: kLightGrey,
                          ),
                          child: TextField(
                            onChanged: (value) {
                              // phone=value;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:screenWidth/52.94), //left8
                              border: InputBorder.none,
                              enabledBorder:InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Waist circumference in cms",

                            ),

                            keyboardType:
                            TextInputType.number, // set the keyboard type to number
                          ),
                        ),
                        SizedBox(height:screenHeight/89.72,),
                        Container(
                          height: screenHeight/16.314,//height55
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kLightGrey),
                            borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                            color: kLightGrey,
                          ),
                          child: TextField(
                            onChanged: (value) {
                              // phone=value;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:screenWidth/52.94), //left8
                              border: InputBorder.none,
                              enabledBorder:InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Neck circumference in cm",

                            ),

                            keyboardType:
                            TextInputType.number, // set the keyboard type to number
                          ),
                        ),
                      ],
                    ),
                  ),

                ),

                SizedBox(
                  height: screenHeight/44.86, //height20
                ),

                Container(
                  //height: 200,
                  width: screenWidth,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)), //width5
                    color: kWhiteColor,
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight/44.86,bottom:screenHeight/44.86, left: screenWidth/21.17, right: screenWidth/21.17),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText('Lifestyle',style: TextStyle( fontSize: 20,fontWeight:FontWeight.w600
                        ),),
                        Divider(),
                        SizedBox(height:screenHeight/89.72,),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                            color: kWhiteColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: screenWidth/42.35, right: screenWidth/42.35),//left=right=10
                            child: DropdownButton<String>(
                              underline: Container(
                                height: 2,
                                color: Colors.transparent,
                              ),
                              hint: AutoSizeText("Do you go to gym?"),
                              value: _selectedGym,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedGym = newValue;
                                });
                              },
                              isExpanded: true,
                              dropdownColor: kWhiteColor,
                              items: <String>['Yes', 'No','Willing too']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: AutoSizeText(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(height:screenHeight/89.72,),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: BorderRadius.circular(screenWidth/84.705),
                            color: kWhiteColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: screenWidth/42.35, right: screenWidth/42.35),//left=right=10
                            child: DropdownButton<String>(
                              underline: Container(
                                height: 2,
                                color: Colors.transparent,
                              ),
                              hint: AutoSizeText("Do you do yoga?"),
                              value: _selectedYoga,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedYoga = newValue;
                                });
                              },
                              isExpanded: true,
                              dropdownColor: kWhiteColor,
                              items: <String>['Yes', 'No','Willing too']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: AutoSizeText(value),
                                );
                              }).toList(),
                            ),
                          ),),
                        SizedBox(height:screenHeight/89.72,),

                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                            color: kWhiteColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: screenWidth/42.35, right: screenWidth/42.35),//left=right=10
                            child: DropdownButton<String>(
                              underline: Container(
                                height: 2,
                                color: Colors.transparent,
                              ),
                              hint: AutoSizeText("Do you do meditation?"),
                              value: _selectedMeditation,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedMeditation = newValue;
                                });
                              },
                              isExpanded: true,
                              dropdownColor: kWhiteColor,
                              items: <String>['Yes', 'No','Willing too']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: AutoSizeText(value),
                                );
                              }).toList(),
                            ),
                          ),),
                        SizedBox(height:screenHeight/89.72,),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                            color: kWhiteColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: screenWidth/42.35, right: screenWidth/42.35),//left=right=10
                            child: DropdownButton<String>(
                              underline: Container(
                                height: 2,
                                color: Colors.transparent,
                              ),
                              hint: AutoSizeText("Your food preference"),
                              value: _selectedFoodChoice,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedFoodChoice = newValue;
                                });
                              },
                              isExpanded: true,
                              dropdownColor: kWhiteColor,
                              items: <String>['Vegetarian', 'Non Vegetarian',]
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: AutoSizeText(value),
                                );
                              }).toList(),
                            ),
                          ),),
                      ],
                    ),
                  ),

                ),


                SizedBox(
                  height: screenHeight/44.86, //height20
                ),

                Container(
                  //height: 200,
                  width: screenWidth,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)), //width5
                    color: kWhiteColor,
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight/44.86,bottom:screenHeight/44.86, left: screenWidth/21.17, right: screenWidth/21.17),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText('Medical History',style: TextStyle( fontSize: 20,fontWeight:FontWeight.w600
                        ),),
                        Divider(),
                        SizedBox(height:screenHeight/89.72,),
                        Container(
                          height: screenHeight/16.314,//height55
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kLightGrey),
                            borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                            color: kLightGrey,
                          ),
                          child: TextField(
                            onChanged: (value) {
                              // phone=value;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:screenWidth/52.94), //left8
                              border: InputBorder.none,
                              enabledBorder:InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Any choronic diease [heart, diabetes]",

                            ),

                            keyboardType:
                            TextInputType.number, // set the keyboard type to number
                          ),
                        ),
                        SizedBox(height:screenHeight/89.72,),

                        Container(
                          height: screenHeight/16.314,//height55
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: kLightGrey),
                            borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                            color: kLightGrey,
                          ),
                          child: TextField(
                            onChanged: (value) {
                              // phone=value;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left:screenWidth/52.94), //left8
                              border: InputBorder.none,
                              enabledBorder:InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Allergies",

                            ),

                            keyboardType:
                            TextInputType.number, // set the keyboard type to number
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
                SizedBox(
                  height: screenHeight/22.43,//height40
                ),
                DefaultButton(
                    text:'Update for Dietician',
                    press:(){
                      _onSubmit();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerHealthCard(bmi:bmi,bsa: bsa, bmr: bmr, ibw: ibw, lbw: lbw, lbm: lbm, mmp: mmp, bfp: bfp,weight:_weight)));
                }),

                // SizedBox(
                //   height: screenHeight/8.97, //height100
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
