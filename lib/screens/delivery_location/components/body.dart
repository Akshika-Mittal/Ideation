import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/gradientBorderDDefaultButton.dart';

import '../../polling/menu_selection/menu_selection_screen.dart';
import 'add_another_address.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isChecked = false;
  bool isHomePressed = false;
  bool isOfficePressed = false;
  bool anotherLocation=false;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding:EdgeInsets.only(left:screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,), //left=right=20 , top=10
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                          fillColor: kWhiteColor,
                          hintText: 'Enter your location',
                          hintStyle: kB1BodyText,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight/44.86,),
                AutoSizeText(
                  'Choose your delivery location',
                  style: kBodyHeading1Text,
                ),
                SizedBox(height:screenHeight/44.86,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      // child: DefaultButton(
                      //     text: 'HOME',
                      //     press: (){},
                      // ),
                      child:MaterialButton(
                          onPressed: () {
                            setState(() {
                              isHomePressed=true;
                              isOfficePressed=false;
                            });
                          },
                          padding: const EdgeInsets.only(right: 0.0),
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
                              borderRadius: BorderRadius.all(Radius.circular(screenWidth/84.705)), //width5
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
                                    color: isHomePressed?kWhiteColor:kBlackColor,
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
                                    minHeight: screenHeight/22.43, //height40
                                ),//height60min sizes for Material buttons
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
                  title: Text('Want to add another location of delivery?',style: kH2Heading,),
                  activeColor: Colors.redAccent,
                  checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth/84.705)),//width5
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                      if (isChecked) {
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddAnotherAddress()));
                      }else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MenuSelection()));}
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
                          )),
                    )),
              ],
            ),
          ),
        ),
    );
  }
}
