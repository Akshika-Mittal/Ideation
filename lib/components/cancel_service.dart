import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';

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
        title: Text('Cancel Lunch'),
        content:Container(
          height: MediaQuery.of(context).size.height/4,
          child: Column(

            children: [
              Text('Are you sure you want to cancel this order?'),
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
                              color: Color(0xFFEB4749),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white,fontSize: 18),))),
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
                              color: Color(0xFFEB4749),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Submit',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white,fontSize: 18),))),
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
        title: Text('Cancel Dinner'),
        content:Container(
          height: MediaQuery.of(context).size.height/4,
          child: Column(

            children: [
              Text('Are you sure you want to cancel this order?'),
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
                              color: Color(0xFFEB4749),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white,fontSize: 18),))),
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
                              color: Color(0xFFEB4749),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Submit',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white,fontSize: 18),))),
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
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar:PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBarWidget(),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              // SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Cancel your delivery time before the item is out delivery.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    //width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 192,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xffF2F2F2),
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
                                  Text(
                                    DateFormat.d().format(dateTime),
                                    style: TextStyle(
                                        fontSize: 45,
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
                                        Text(
                                          DateFormat('EEEE').format(dateTime),
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Text(DateFormat.yMMMM().format(dateTime),
                                            style: TextStyle(fontSize: 13))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  alignment: Alignment.topRight,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
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
                                  color: Color(0xFFEB4749),
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
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              cancelLunch();
                            },
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Reschedule for Lunch',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      'Status : Preparing ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEB4749),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              cancelDinner();
                            },
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Reschedule for Dinner',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      'Status : Scheduled',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEB4749),
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