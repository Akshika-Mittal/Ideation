import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/non_existing_user/components/college_address.dart';
import 'package:tiffin/widgets/heading_text.dart';

import '../../../utils/AppColors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/screen_heading.dart';
import '../../../widgets/sub_heading_text.dart';
import '../../otp/otp_screen.dart';
import 'address.dart';

class CollegeDetailsScreen extends StatefulWidget {
  static String routeName = "/collegeDeaitls";

  //final bool isStudent;
  //CollegeDetailsScreen({required this.isStudent});
  //bool isStudent = isStudent;
  @override
  State<CollegeDetailsScreen> createState() => _CollegeDetailsScreenState();
}

class _CollegeDetailsScreenState extends State<CollegeDetailsScreen> {

  StudentStayType _stayType = StudentStayType.Hostel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: '',),
      ),
      body: Padding(
        padding:EdgeInsets.symmetric(vertical: Dimensions.height20,horizontal: Dimensions.width10),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Text(isStudent),
            SizedBox(
              height: Dimensions.height20,
            ),
            HeadingText(text: "College Details"),
            SizedBox(height: Dimensions.height30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
                style: TextStyle(
                  fontSize: Dimensions.font17,
                  color: kIconColor,
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Upload College ID',
                ),
                style: TextStyle(
                  fontSize: Dimensions.font17,
                  color: kIconColor,
                ),
                //controller: _Namecontroller,
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            HeadingText(text: "Are you staying in?"),
            Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text('Hostel'),
                    leading: Radio(
                      value: StudentStayType.Hostel,
                      groupValue: _stayType,
                      onChanged: (StudentStayType? value){
                        setState(() {
                          _stayType!=value;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text('PG'),
                    leading: Radio(
                      value: StudentStayType.PG,
                      groupValue: _stayType,
                      onChanged: (StudentStayType? value){
                        setState(() {
                          _stayType!=value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            HeadingText(text: "College Email ID"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter College Email ID',
                ),
                style: TextStyle(
                  fontSize: Dimensions.font17,
                  color: kIconColor,
                ),
                //controller: _Namecontroller,
              ),
            ),
            Spacer(),
            SubHeadingText(text: "Promo code will be sent to the following college id"),
            DefaultButton(
              text: 'Continue',
              press:() { Navigator.of(context).push(MaterialPageRoute(builder: (context) => CollegeAddress()));},
            ),
          ],
        ),
      ),
    );
  }
}
