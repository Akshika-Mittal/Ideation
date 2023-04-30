import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

import '../../../utils/constants.dart';
enum rescheduletime { one, two, three, four }

class DinnerPopup extends StatefulWidget {
  @override
  State<DinnerPopup> createState() => _DinnerPopupState();
}
class _DinnerPopupState extends State<DinnerPopup> {
  @override
  rescheduletime _value = rescheduletime.one;

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenWidth-140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         //AutoSizeText("Hello"),
          RadioListTile(
              selectedTileColor: Colors.redAccent,
              activeColor: Colors.redAccent,
              value: rescheduletime.one,
              groupValue: _value,
              title: Text("07:30pm to 08:30pm"),
              onChanged: (rescheduletime? val) {
                setState(() {
                  _value=val!;
                });
              }),
          RadioListTile(
              selectedTileColor: Colors.redAccent,
              activeColor: Colors.redAccent,
              value: rescheduletime.two,
              groupValue: _value,
              title: Text("08:30pm to 09:30pm"),
              onChanged: (rescheduletime? val) {
                setState(() {
                  _value=val!;
                });
              }),
          RadioListTile(
              selectedTileColor: Colors.redAccent,
              activeColor: Colors.redAccent,
              value: rescheduletime.three,
              groupValue: _value,
              title: Text("09:30pm to 10:30pm"),
              onChanged: (rescheduletime? val) {
                setState(() {
                  _value=val!;
                });
              }),
          RadioListTile(
              selectedTileColor: Colors.redAccent,
              activeColor: Colors.redAccent,
              value: rescheduletime.four,
              groupValue: _value,
              title: Text("10:30pm to 11:30pm"),
              onChanged: (rescheduletime? val) {
                setState(() {
                  _value=val!;
                });
              }),
         Spacer(),
         MaterialButton(onPressed: (){},
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                 gradient: kPrimaryGradientColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Sumbit',style: kSmallButtonText,),
                ),
              ),
            ),
            ),
         )
        ],
      ),
    );

  }

  RadioListTile<rescheduletime> buildRadioListTile(rescheduletime value,String title) {
    return RadioListTile(
        selectedTileColor: Colors.redAccent,
        activeColor: Colors.redAccent,
        value: value,
        groupValue: _value,
        title: AutoSizeText(title,style: kB1BodyText,),
        onChanged: (rescheduletime? val) {
          setState(() {
            _value=val!;
          });
        });
  }
}
