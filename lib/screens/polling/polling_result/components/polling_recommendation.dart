import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

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
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: AppBarWidget(),
      ),
      body: Container(
        color: kAppBackgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width12 ,vertical: Dimensions.height12),
          child: Form(
            key:_formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: Dimensions.height20,),
                HeadingText(
                  text:'Recommend',
                  size: Dimensions.font26,
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                SubHeadingText(
                  text: 'Add your item in the recommended text field, we will try to add these items in the future polls.',
                  size: Dimensions.font14,
                  ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width8,vertical: Dimensions.height8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(Dimensions.height10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.width8),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: foodTypeValue,
                          icon: const Icon(Icons.arrow_drop_down,
                          color:kMainThemeColor,
                        ),
                        iconSize: Dimensions.height30,
                        elevation: 16,
                        isExpanded: true,
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 18
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            foodTypeValue = newValue!;
                          });
                        },
                        items: <String>['Select food type','Vegetarian', 'Non Vegetarian', 'Healthy Vegetarian', 'Healthy Non Vegetarian'].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          //hint: Text('Akshika'),
                          value: foodCategoryValue,
                          icon: const Icon(Icons.arrow_drop_down,
                            color:kPrimaryColor,),
                          iconSize: 36,
                          elevation: 16,
                          isExpanded: true,
                          style: TextStyle(
                              color: kTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 18
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              foodCategoryValue = newValue!;
                            });
                          },
                          items: <String>['Select food category','Main Course 1', 'Main Course 2', 'Dal', 'Rice','Roti','Dessert']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 70,

                  child: TextField(
                    onChanged: (value){
                      setState(() {
                        _btnActive=value.length>=1? true :false;
                      });

                    },
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                      filled: true,

                      suffixIcon: Align(
                       // alignment: Alignment.topRight,
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child:   Icon(Icons.create,color: kMainThemeColor, ),
                      ),
                      hintTextDirection: TextDirection.rtl,
                        fillColor: kWhiteColor,

                        hintText: 'Type your food recommendation',
                      hintStyle: TextStyle(
                              color: kAppBackgroundColor,
                      ),
                      border: OutlineInputBorder(
                      ),
                    ),
                    controller: controller,
                  ),
                ),

                Spacer(),

              SizedBox(
          width: double.infinity,
          height: Dimensions.width56,
          child: OutlinedButton(
            style:OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              primary:  _btnActive==true? kMainThemeColor:kAppBackgroundColor,
            ),


            onPressed: () {
              _btnActive==true? _recommend():null;

            },
            child: HeadingText(
              text:'Recommend',
              size: Dimensions.font45,
                color: kWhiteColor,
            ),
          ),
        ),
      ],
    ),),
        ),),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
      //bottomNavigationBar:
    );


  }
  void _recommend(){
    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius10),
            ),
            title: HeadingText(
              text:'Thank you!',
              size: Dimensions.font26,
              color: kBlackColor,
            ),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: [
                  new SubHeadingText(
                    text: 'We have received your recommendation. You will receive an email when the item will be included in the poll.',
                    color: kBlackColor,
                    ),
                ],
              ),
            ),
            actions: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buttonWidget(
                      text:'Proceed',
                      onPress:() {Navigator.of(context).pop();},
                    ),
                    buttonWidget(
                      text:'Back',
                      onPress:() {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      },
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

class buttonWidget extends StatelessWidget {
  const buttonWidget({
    required this.text,
    required this.onPress
  });
  final String text;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius10),
        ),
        primary: kWhiteColor,
      ),

      child: HeadingText(
        text:text,
        size: Dimensions.font26,
        color: kMainThemeColor,
      ),
      onPressed: onPress,
    );
  }
}
