import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import '../../../utils/CommonUtils.dart';
import 'college_location.dart';
import 'office_location.dart';
import 'package:tiffin/components/input_field.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin{

  bool isChecked = false; //
  bool isAcceptTerms = false; // t&c checkbox
  bool isStudent=false;// Student check box

  TextEditingController _emailController = TextEditingController();
  TextEditingController  _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _errorMsg ="";

  @override
  //validation func
  Future<void> addCustomer(BuildContext cts) async{
    setState((){
      _errorMsg="";
    });


    //emppty validation
    if(CommonUtils.isNullOrBlank(_emailController.text) ||
        CommonUtils.isNullOrBlank(_nameController.text) ||
        CommonUtils.isNullOrBlank(_passwordController.text)){
          _errorMsg="Please fill all your details";
        }
    else{
      _errorMsg="";
      if(isAcceptTerms) {
        print("#########################");
        print(_nameController.text);
        print(_emailController.text);
        print(_passwordController.text);
        _errorMsg = "";
        // _nameController.text="";
        // _emailController.text="";
        // _passwordController.text="";
      }
      else{
        _errorMsg="Please accept our terms & conditions.";
       }
      }
    }
  void dispose() {
    _passwordController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        color: kLightGrey,
        child: Padding(
          padding: EdgeInsets.only(top: screenHeight/44.862 ,bottom: screenHeight/44.862,left:screenWidth/21.176,right:screenWidth/21.176), //height20,width20
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'Sign Up',
                style: kH1Heading,
              ),
              SizedBox(
                height: screenHeight/89.72, //height10
              ),
              AutoSizeText("Register you details and grab your first meal for free!",style: kH2Heading,),
              SizedBox(
                height: screenHeight/17.94, //height50
              ),
              DividerWidget(),
              InputField(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                hintText: "What should we call you?",
                inputType: TextInputType.text,
                controller : _nameController,
              ),
              SizedBox(
                height: screenHeight/89.725, //height10
              ),
              InputField(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                hintText: "Email",
                inputType: TextInputType.text,
                controller : _emailController,
              ),
              SizedBox(
                height: screenHeight/89.725, //height10
              ),
              InputField(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                hintText: "Password",
                inputType: TextInputType.text,
                controller : _passwordController,
              ),
              SizedBox(
                height: screenHeight/89.725, //height10
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth/21.176,right: screenWidth/21.176),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    _errorMsg,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              CheckboxListTile(
                title: Text('Are you currently a student?',style: kH2Heading,),
                activeColor: Colors.redAccent,
                checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth/84.705)), //width5
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                    if (isChecked) {
                      isStudent=true;
                      print(isStudent);
                    } else {
                      // Perform specific action when checkbox is unchecked
                      isStudent=false;
                      print(isStudent);
                    }
                  });
                },
              ),
              CheckboxListTile(
                title: Text('I agree with terms and conditions',style: kH2Heading,),
                activeColor: Colors.redAccent,
                checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth/84.705)),
                value: isAcceptTerms,
                onChanged: (bool? value) {
                  setState(() {
                    isAcceptTerms = value ?? false;
                    if (isAcceptTerms) {
                      // Perform specific action when checkbox is checked
                      print('Checkbox is checked!');
                    } else {
                      // Perform specific action when checkbox is unchecked
                      print('Checkbox is unchecked!');
                    }
                  });
                },
              ),
              SizedBox(
                height: screenHeight/89.72, //height10
              ),
              DefaultButton(
                  text: 'Set your delivery location',
                  press: () {
                    if(isStudent==true){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CollegeLocation()));
                    }
                    else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OfficeLocation()));
                    }
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
