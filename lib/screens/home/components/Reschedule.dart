import 'package:date_picker_timeline/extra/dimen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/home/components/dinner_popup.dart';
import 'package:tiffin/screens/home/components/lunch_popup.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

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
      title: SubHeadingText(text: 'Select Lunch Time'),
      content: lunchPopup(),
    ),
  );
  Future dinnerDialogue() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: SubHeadingText(text:'Select Dinner Time'),
      content: DinnerPopup(),
    ),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
        preferredSize:Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: AppBarWidget(),
      ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:EdgeInsets.only(left: Dimensions.width20, top: Dimensions.height20),
                child: HeadingText(
                  text:"Reschedule",
                  size: Dimensions.font26,
                  color: kBlackColor,
                  ),
                ),
              Padding(
                padding: EdgeInsets.only(left: Dimensions.width20,),
                child: SubHeadingText(
                  text:"Reschedule your delivery time before the item is out delivery.",
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Stack(
                children: [
                  Container(
                    //width: MediaQuery.of(context).size.width,
                    height: Dimensions.screenHeight - 192,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                      color: kAppBackgroundColor,
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
                                  HeadingText(
                                    text:DateFormat.d().format(dateTime),
                                    size: Dimensions.font45,
                                    color: kBlackColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        SubHeadingText(
                                          text:DateFormat('EEEE').format(dateTime),
                                        ),
                                        SubHeadingText(
                                            text:DateFormat.yMMMM().format(dateTime),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  alignment: Alignment.topRight,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                                      color: kMainThemeColor),
                                  child: Padding(
                                    padding:EdgeInsets.symmetric(horizontal: Dimensions.width10, vertical: (Dimensions.height10)/2),
                                    child: SubHeadingText(
                                      text: 'Cancel',
                                     color: kWhiteColor,
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
                                  color: kMainThemeColor,
                                  shape: BoxShape.circle),
                              selectedDecoration: BoxDecoration(
                                  color: kAppBackgroundColor, shape: BoxShape.circle),
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
                            height: Dimensions.height10,
                          ),
                          GestureDetector(
                            onTap: () {
                              lunchDialogue();
                            },
                            child: Container(
                              height: Dimensions.height60,
                              width: Dimensions.screenWidth,
                              child: Padding(
                                padding:EdgeInsets.symmetric(horizontal: Dimensions.width10,vertical: Dimensions.height10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SubHeadingText(
                                      text:'Reschedule for Lunch',
                                      color: kWhiteColor,
                                    ),
                                    SubHeadingText(
                                      text: 'Status : Preparing ',
                                      color: kWhiteColor,
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius10),
                                color: kMainThemeColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          GestureDetector(
                            onTap: () {
                              dinnerDialogue();
                            },
                            child: Container(
                              height: Dimensions.height60,
                              width: Dimensions.screenWidth,
                              child: Padding(
                                padding:EdgeInsets.symmetric(vertical: Dimensions.height10,horizontal: Dimensions.width10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    HeadingText(
                                      text: 'Reschedule for Dinner',
                                      color: kWhiteColor,
                                    ),
                                    SubHeadingText(
                                      text:'Status : Scheduled',
                                      color:kWhiteColor,
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius10),
                                color: kMainThemeColor,
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
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
    );
  }
}