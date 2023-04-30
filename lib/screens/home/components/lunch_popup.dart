
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

import '../../../utils/AppColors.dart';
enum rescheduletime { one, two, three, four }
class lunchPopup extends StatefulWidget {
  const lunchPopup({Key? key}) : super(key: key);
  @override
  State<lunchPopup> createState() => _lunchPopupState();
}
class _lunchPopupState extends State<lunchPopup> {
  @override
  rescheduletime _value = rescheduletime.one;
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        height: screenHeight/2.99-screenHeight/17.94+screenHeight/44.86, //height250
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RadioListTile(
                selectedTileColor: Colors.redAccent,
                activeColor: Colors.redAccent,
                value: rescheduletime.one,
                groupValue: _value,
                title: Text("12:30pm to 01:30pm"),
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
                title: Text("01:30pm to 02:30pm"),
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
                title: Text("02:30pm to 03:30pm"),
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
                title: Text("03:30pm to 04:00pm"),
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
