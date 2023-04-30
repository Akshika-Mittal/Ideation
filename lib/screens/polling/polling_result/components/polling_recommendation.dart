import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

import '../../../../widgets/screen_heading.dart';

class PollingRecommendation extends StatefulWidget {
  static String routeName = "/polling_recommendation";
  @override
  State<PollingRecommendation> createState() => _PollingRecommendationState();
}
class _PollingRecommendationState extends State<PollingRecommendation> {
  final _formKey = GlobalKey<FormState>();

 String foodTypeValue = 'Select food type';
 String foodCategoryValue = 'Select food category';
 bool isActive = true;
 bool _btnActive=false;
 late TextEditingController controller;
  @override

  void initState(){
    super.initState();
    controller = TextEditingController();
    controller.addListener((){
      final isActive = controller.text.isNotEmpty;
      setState(() => this.isActive = isActive);
    });
  }
   @override
   void dispose(){
    controller.dispose();
    super.dispose();
   }

   void onPressed(){
    if(isActive == true){

    }
   }
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'')),
      body: Container(
        color: kLightGrey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth/21.17 ,vertical: screenHeight/44.86), //height20 width20
          child: Form(
            key:_formKey,
            child: Column(
              children: <Widget>[
                //SizedBox(height: Dimensions.height20,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'Recommend',
                    style: kH1Heading,
                  ),
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                AutoSizeText(
                  'Add your item in the recommended text field, we will try to add these items in the future polls.',
                  style: kB1BodyText,
                  ),
                SizedBox(
                  height: screenHeight/44.86, //height20
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth/52.94), //width8
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: foodTypeValue,
                        icon: ShaderMask(
                          blendMode: BlendMode.srcATop,
                          shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
                          child: Icon(Icons.arrow_drop_down,
                          //color:kBlackColor,
                      ),
                        ),
                      iconSize: screenHeight/29.90, //height30
                      elevation: 16,
                      isExpanded: true,
                      style: kB1BodyText,
                      onChanged: (String? newValue) {
                        setState(() {
                          foodTypeValue = newValue!;
                        });
                      },
                      items: <String>['Select food type','Vegetarian', 'Non Vegetarian', 'Healthy Vegetarian', 'Healthy Non Vegetarian'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: AutoSizeText(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight/44.86, //height20
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(screenWidth/28.23), //width15
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth/52.94), //width8
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        //hint: Text('Akshika'),
                        value: foodCategoryValue,
                        icon: ShaderMask(
                          blendMode: BlendMode.srcATop,
                          shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
                          child: Icon(Icons.arrow_drop_down,
                            ),
                        ),
                        iconSize: 36,
                        elevation: 16,
                        isExpanded: true,
                        style: kB1BodyText,
                        onChanged: (String? newValue) {
                          setState(() {
                            foodCategoryValue = newValue!;
                          });
                        },
                        items: <String>['Select food category','Main Course 1', 'Main Course 2', 'Dal', 'Rice','Roti','Dessert']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: AutoSizeText(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight/44.86, //height20
                ),
                Container(
                  height: screenHeight/12.81, //height70
                  child: TextField(
                    onChanged: (value){
                      setState(() {
                        _btnActive=value.length>=1? true :false;
                      });
                    },
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: Align(
                       // alignment: Alignment.topRight,
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child:   ShaderMask(
                            blendMode: BlendMode.srcATop,
                            shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
                            child: Icon(Icons.create,)),
                      ),
                      hintTextDirection: TextDirection.rtl,
                      contentPadding: EdgeInsets.only(left:screenWidth/42.35,top: screenHeight/44.86,bottom: screenHeight/44.86), //left10 //height20
                        fillColor: kWhiteColor,
                        hintText: 'Type your food recommendation',
                      hintStyle: kB1BodyText,
                      enabledBorder:InputBorder.none,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    controller: controller,
                  ),
                ),

                Spacer(),
            MaterialButton(
                onPressed: () {
                  setState(() {
                    // isHomePressed=false;
                    //_btnActive=true;
                    if(_btnActive == true){
                      _recommend();
                    }
                  });
                },
                padding: EdgeInsets.only(right: 0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: _btnActive? LinearGradient(
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
                    borderRadius: BorderRadius.all(Radius.circular(screenWidth/105.88)), //width4
                  ),
                  child: Container(
                      constraints: BoxConstraints(
                          minWidth: screenWidth/7.05, //width60
                          minHeight: screenHeight/14.95, //height60
                      ), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        'Recommend',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize:16,
                          fontWeight: FontWeight.w700,
                          color: _btnActive?kWhiteColor:kBlackColor,
                          height: 1,
                        ),
                      )),
                )),
      ],
    ),),
        ),),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
      //bottomNavigationBar:
    );


  }
  void _recommend(){
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
            ),
            title: Text(
              'Thank you!',
              style: kBodyHeading1TextBoldBlack,
            ),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: [
                  new Text(
                    'We have received your recommendation. You will receive an email when the item will be included in the poll.',
                    style: kB1BodyText,
                    ),
                ],
              ),
            ),
            actions: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: (){Navigator.pushNamed(context, HomeScreen.routeName);},
                        child: Container(
                          // width: MediaQuery.of(context).size.width/2-5,
                            height: 40,
                            decoration: BoxDecoration(
                                gradient: kPrimaryGradientColor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Text('Proceed',style: kSmallButtonText,))),
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
                            child: Center(child: Text('Back',style: kSmallButtonText,))),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          );
        },
      );
    });
  }
}