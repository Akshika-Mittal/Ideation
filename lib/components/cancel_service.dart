import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';

import '../utils/dimensions.dart';
import '../widgets/screen_heading.dart';

class cancelService extends StatefulWidget {
  const cancelService({Key? key}) : super(key: key);

  @override
  State<cancelService> createState() => _cancelServiceState();
}

class _cancelServiceState extends State<cancelService> {
  DateTime dateTime = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? _selectedDay;
  Future cancelLunch() => showDialog(
    context: context,
    builder: (context) => AlertDialog(

        title: Text('Cancel Lunch',style: kBodyTextBoldBlackMedium,),
        content:Container(
          height:100,
          child: Column(
            children: [
              Text('Are you sure you want to cancel this order?',style: kH2Heading,),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){},
                      child: Container(
                        // width: MediaQuery.of(context).size.width/2-5,
                          height: 40,
                          decoration: BoxDecoration(
                              gradient: kPrimaryGradientColor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Cancel',style: kSmallButtonText,))),
                    ),
                  ),
                  //Spacer(),
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){},
                      child: Container(
                        //width: MediaQuery.of(context).size.width/2-5,
                          height: 40,
                          decoration: BoxDecoration(
                              gradient: kPrimaryGradientColor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Submit',style: kSmallButtonText,))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    ),
  );
  Future cancelDinner() => showDialog(

    context: context,
    builder: (context) => AlertDialog(
        title: Text('Cancel Dinner',style: kBodyTextBoldBlackMedium,),
        content:Container(
          height: 100,
          child: Column(
            children: [
              Text('Are you sure you want to cancel this order?',style: kH2Heading,),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){},
                      child: Container(
                        // width: MediaQuery.of(context).size.width/2-5,
                          height: 40,
                          decoration: BoxDecoration(
                              gradient: kPrimaryGradientColor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Cancel',style: kSmallButtonText))),
                    ),
                  ),
                  //Spacer(),
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){},
                      child: Container(
                        //width: MediaQuery.of(context).size.width/2-5,
                          height: 40,
                          decoration: BoxDecoration(
                              gradient: kPrimaryGradientColor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Submit',style: kSmallButtonText,))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    ),
  );
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
       // drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Cancel Lunch/Dinner')),
        body: SingleChildScrollView(
          child: Container(
            color: kLightGrey,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth/21.17,right: screenWidth/21.17,top: screenHeight/89.72), //left=right20 top10
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "Cancel",
                    style: kH1Heading,
                  ),
                  // SizedBox(height: 5,),
                  AutoSizeText(
                    "Cancel your delivery time before the item is out delivery.",
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
                        height: screenHeight - 192,
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
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5, 10, 0, 0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            AutoSizeText(
                                              DateFormat('EEEE').format(dateTime),
                                              style: kB1BodyText,
                                            ),
                                            AutoSizeText(DateFormat.yMMMM().format(dateTime),
                                                style: kB1BodyText)
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
                                          'Cancel',
                                          style: kSmallButtonText,
                                        ),
                                      ))
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
                                  cancelLunch();
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
                                          'Cancel Lunch',
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
                                    gradient: kPrimaryGradientColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:screenHeight/89.72, //height10
                              ),
                              GestureDetector(
                                onTap: () {
                                  cancelDinner();
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
                                          'Cancel Dinner',
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
                                    borderRadius: BorderRadius.circular(screenWidth/84.705), //width5
                                    gradient: kPrimaryGradientColor
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
        ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
    );
  }
}