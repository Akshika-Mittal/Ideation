import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:tiffin/screens/non_existing_user/components/college_details.dart';
import 'package:tiffin/screens/otp/otp_screen.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

import '../../../enums.dart';
import 'home_address.dart';
class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
  PersonCategory _category = PersonCategory.Vegetarian;
  bool isStudent = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _Namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.height20,horizontal: Dimensions.width10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: HeadingText(
                text: 'SignUp',
                size: Dimensions.font26,
                //textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: Dimensions.height50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                ),
                style: TextStyle(
                  fontSize: Dimensions.font17,
                  color: kIconColor,
                ),
                controller: _Namecontroller,
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
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
                controller: _Namecontroller,
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                ),
                style: TextStyle(
                  fontSize: Dimensions.font17,
                  color: kIconColor,
                ),
                controller: _Namecontroller,
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                style: TextStyle(
                  fontSize: Dimensions.font17,
                  color: kIconColor,
                ),
                controller: _Namecontroller,
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Column(
              children: <Widget>[
                ListTile(
                  title: Text('Vegetarian'),
                  leading: Radio(
                    value: PersonCategory.Vegetarian,
                    groupValue: _category,
                    onChanged: (PersonCategory? value){
                      setState(() {
                        _category!=value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Non Vegetarian'),
                  leading: Radio(
                    value: PersonCategory.NonVegetarian,
                    groupValue: _category,
                    onChanged: (PersonCategory? value){
                      setState(() {
                        _category!=value;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: HeadingText(text: "Are you a student?"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: Checkbox(
                      value: isStudent,
                      onChanged: (bool? newValue){
                        setState(() => isStudent = newValue!);
                        }
                      ),
                )
              ],
            ),
            Spacer(),
            DefaultButton(
              text: 'SignUp',
              press:() {
                isStudent?
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CollegeDetailsScreen())):
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeAddress()));
              },
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            DefaultButton(
              text: 'Login',
              press:() { Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpScreen()));},
            ),
          ],
        ),
      ),
    );
  }
}


