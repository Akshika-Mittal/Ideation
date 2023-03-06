import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/screen_heading.dart';
enum SingingCharacter { none,weight_loss, building_muscle, weight_maintain, balanced_diet, healthy_habits }
class Goal extends StatefulWidget {
  static String routeName = "/goals";

  @override
  State<Goal> createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  bool valuefirst = false;
  bool valuesecond = false;
  SingingCharacter? _character = SingingCharacter.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: Screen_Heading(text: 'Goal',),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width12,vertical: Dimensions.height12),
        child: Column(
          children: <Widget>[
            DividerWidget(),
            Align(
              alignment: Alignment.topLeft,
              child: HeadingText(
                text:'Choose your goal',
                color: kBlackColor,
              ),
            ),
            SizedBox(height: Dimensions.height15,),
            ListTile(
              title: Text("Weight Loss"),
              leading: Icon(Icons.fitness_center, color: Colors.black,),
              trailing:Radio<SingingCharacter>(
                value: SingingCharacter.weight_loss,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ) ,
            DividerWidget(),
            ListTile(
              title: Text("Building Muscles"),
              leading: Icon(Icons.fitness_center, color: Colors.black,),
              trailing:Radio<SingingCharacter>(
                value: SingingCharacter.building_muscle,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ) ,
            DividerWidget(),
            ListTile(
              title: Text("Weight Maintenance"),
              leading: Icon(Icons.fitness_center, color: Colors.black,),
              trailing:Radio<SingingCharacter>(
                value: SingingCharacter.weight_maintain,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ) ,
            DividerWidget(),
            ListTile(
              title: Text("Balanced Diet"),
              leading: Icon(Icons.fitness_center, color: Colors.black,),
              trailing:Radio<SingingCharacter>(
                value: SingingCharacter.balanced_diet,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ) ,
            DividerWidget(),
            ListTile(
              title: Text("Healthier Habits"),
              leading: Icon(Icons.fitness_center, color: Colors.black,),
              trailing:Radio<SingingCharacter>(
                value: SingingCharacter.healthy_habits,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ) ,
            DividerWidget(),
            Spacer(),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: HeadingText(
                text:'Our dietician will contact you regarding your goals.',
                color: kBlackColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimensions.height20,horizontal: Dimensions.width20),
              child: DefaultButton(
                text: "Proceed to Payment",
                press: (){
                  Navigator.pushNamed(context, SettingsScreen.routeName);
                },
              ),
            ),

          ],
        ),
      ),

    );
  }
}
