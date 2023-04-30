import 'package:auto_size_text/auto_size_text.dart';
import 'package:date_picker_timeline/extra/dimen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/home/components/dinner_popup.dart';
import 'package:tiffin/screens/home/components/lunch_popup.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

import '../../../widgets/screen_heading.dart';

enum rescheduletime { one, two, three, four }

class Reschedule extends StatefulWidget {
  const Reschedule({Key? key}) : super(key: key);

  @override
  State<Reschedule> createState() => _RescheduleState();
}

class _RescheduleState extends State<Reschedule> {
  @override
  DateTime dateTime = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? _selectedDay;

  @override
  //bool pressAttention = false;
  Future lunchDialogue() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Select Lunch Time'),
      content: lunchPopup(),
    ),
  );
  Future dinnerDialogue() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
     title: Text('Select Dinner Time'),
     content: DinnerPopup(),
    ),
  );
  // Future dinnerDialogue() => showDialog(
  //   context: context,
  //   builder: (context) => AlertDialog(
  //     title: AutoSizeText('Select Dinner Time',style: kB1BodyTextBlack,),
  //     content: DinnerPopup(),
  //   ),
  // );

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Reschedule Lunch/Dinner')),
        body: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72,bottom: screenHeight/89.72), //left=right20 top10
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  "Reschedule",
                  style: kH1Heading,
                  ),
                AutoSizeText(
                  "Reschedule your delivery time before the item is out delivery.",
                  style: kH2Heading,
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                SizedBox(
                  height: screenHeight/89.72, //height10
                ),
                Stack(
                  children: [
                    Container(
                      //width: MediaQuery.of(context).size.width,
                      height: screenHeight/1.495,//height600
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth/42.35), //width10
                        color: kWhiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    AutoSizeText(
                                      DateFormat.d().format(dateTime),
                                      style: TextStyle(
                                          fontSize: 45,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            DateFormat('EEEE').format(dateTime),
                                            style: kB1BodyText,
                                          ),
                                          AutoSizeText(
                                             DateFormat.yMMMM().format(dateTime),
                                            style: kB1BodyText,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                    alignment: Alignment.topRight,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                                        gradient: kPrimaryGradientColor),
                                    child: Padding(
                                      padding:EdgeInsets.symmetric(horizontal: screenWidth/42.35, vertical: screenHeight/89.72/2), //width10 height5
                                      child: AutoSizeText(
                                        'Reschedue',
                                        style: kSmallButtonText,
                                      ),
                                    ),
                                ),
                              ],
                            ),
                            TableCalendar(
                              focusedDay: dateTime,
                              firstDay: DateTime.utc(2010, 10, 16),
                              lastDay: DateTime.utc(2100, 10, 16),
                              headerStyle: HeaderStyle(
                                formatButtonVisible: false,
                              ),
                              calendarStyle: CalendarStyle(
                                todayDecoration: BoxDecoration(
                                    gradient: kPrimaryGradientColor,
                                    shape: BoxShape.circle),
                                selectedDecoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                              selectedDayPredicate: (day) {
                                // Use `selectedDayPredicate` to determine which day is currently selected.
                                // If this returns true, then `day` will be marked as selected.

                                // Using `isSameDay` is recommended to disregard
                                // the time-part of compared DateTime objects.
                                return isSameDay(_selectedDay, day);
                              },
                              onDaySelected: (selectedDay, focusedDay) {
                                if (!isSameDay(_selectedDay, selectedDay)) {
                                  // Call `setState()` when updating the selected day
                                  setState(() {
                                    _selectedDay = selectedDay;
                                    dateTime = focusedDay;
                                  });
                                }
                              },
                              onPageChanged: (focusedDay) {
                                // No need to call `setState()` here
                                dateTime = focusedDay;
                              },
                            ),
                            SizedBox(
                              height: screenHeight/89.72, //height10
                            ),
                            GestureDetector(
                              onTap: () {
                                lunchDialogue();
                              },
                              child: Container(
                                height: screenHeight/14.95, //height60
                                width: screenWidth,
                                child: Padding(
                                  padding:EdgeInsets.symmetric(horizontal: screenWidth/42.35,vertical: screenHeight/89.72), //height=width10
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Reschedule for Lunch',
                                        style: kBodyHeading1TextBold,
                                      ),
                                      AutoSizeText(
                                        'Status : Preparing ',
                                        style: kB1BodyTextWhite,
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                                  gradient: kPrimaryGradientColor
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight/89.72, //height10
                            ),
                            GestureDetector(
                              onTap: () {
                                dinnerDialogue();
                              },
                              child: Container(
                                height: screenHeight/14.95, //height60
                                width: screenWidth,
                                child: Padding(
                                  padding:EdgeInsets.symmetric(horizontal: screenWidth/42.35,vertical: screenHeight/89.72), //height=width10
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Reschedule for Dinner',
                                        style: kBodyHeading1TextBold,
                                      ),
                                      AutoSizeText(
                                        'Status : Scheduled',
                                        style: kB1BodyTextWhite,
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(screenWidth/84.705), //width10
                                  gradient: kPrimaryGradientColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
    );
  }
}