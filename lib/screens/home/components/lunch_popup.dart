
import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
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
    return Container(
      height: Dimensions.screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildRadioListTile(
            rescheduletime.one,
            "01:30pm to 02:30pm",
          ),
          buildRadioListTile(
            rescheduletime.two,
            "02:30pm to 03:30pm",
          ),
          buildRadioListTile(
            rescheduletime.three,
            "03:30pm to 04:00pm",
          ),
          Spacer(),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: DefaultButton(
                    press: (){},
                    text:'Cancel',
                    ),
                  ),
                Expanded(
                  child: DefaultButton(
                    press: (){},
                    text:'Submit',
                    ),
                  ),
              ],
            ),
          )
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
