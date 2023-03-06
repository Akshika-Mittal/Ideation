import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
enum rescheduletime { one, two, three, four }

class DinnerPopup extends StatefulWidget {
  @override
  State<DinnerPopup> createState() => _DinnerPopupState();
}
class _DinnerPopupState extends State<DinnerPopup> {
  @override
  rescheduletime _value = rescheduletime.one;

  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildRadioListTile(
              rescheduletime.one,
              '07:30pm to 08:30pm',
          ),
          buildRadioListTile(
              rescheduletime.two,
              "08:30pm to 09:30pm",
          ),
          buildRadioListTile(
              rescheduletime.three,
              "09:30pm to 10:30pm",
          ),
          buildRadioListTile(
              rescheduletime.four,
              "10:30pm to 11:30pm",
          ),
          Spacer(),
          DefaultButton(
            text: 'Submit',
            press: (){},
          ),
        ],
      ),
    );

  }

  RadioListTile<rescheduletime> buildRadioListTile(rescheduletime value,String title) {
    return RadioListTile(
            value: value,
            groupValue: _value,
            title: SubHeadingText(text:title),
            onChanged: (rescheduletime? val) {
              setState(() {
                _value=val!;
              });
            });
  }
}
