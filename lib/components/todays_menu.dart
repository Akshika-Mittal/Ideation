import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';

class Todays_menu extends StatefulWidget {
  const Todays_menu({Key? key}) : super(key: key);

  @override
  State<Todays_menu> createState() => _Todays_menuState();
}

class _Todays_menuState extends State<Todays_menu> {
  @override
  DateTime dateTime = DateTime.now();

  int days = 10;
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child:   Scaffold(
          drawer: NavigationDrawerWidget(),
          appBar:PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBarWidget(),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Text(DateFormat.d().format(dateTime),style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700,color: Colors.black),),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(DateFormat('EEEE').format(dateTime),style: TextStyle(fontSize: 13),),
                              Text(DateFormat.yMMMM().format(dateTime),style: TextStyle(fontSize: 13))
                            ],),
                        ),
                      ],
                    ),

                    Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text('Today', style: TextStyle(fontSize: 13,color: Colors.white),),
                        ))

                  ],
                ),
              ),
              Container(
                child: DatePicker(
                  DateTime.now(),
                  height: 100,
                  width: 80,
                  initialSelectedDate: DateTime.now(),
                  selectionColor:  Color(0xffEB4749),
                  selectedTextColor: Colors.white,
                  dateTextStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                  dayTextStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                  monthTextStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ) ,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(

                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TabBar(
                          indicator: BoxDecoration(
                              color: Color(0xffEB4749),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          tabs:[
                            Tab(text: 'Lunch'),
                            Tab(text: 'Dinner')
                          ]),
                    ),
                  ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.40,
                      child: TabBarView(

                        children: [

                          Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffF2F2F2),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white24.withOpacity(0.5),

                                    //spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("Today's Menu", style: TextStyle( fontSize:20,color: Colors.black ),),
                                  ),
                                  Container(color: Colors.black,height: 2,width: 300,),
                                  SizedBox(height: 10,),
                                  Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Dal Makhani'),
                                          Text('170ml')
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Chicken Curry'),
                                          Text('200ml')
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Roti'),
                                          Text('2')
                                        ],
                                      )
                                    ],
                                  )

                                ],
                              )),
                          Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffF2F2F2),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white24.withOpacity(0.5),

                                    //spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("Today's Menu", style: TextStyle( fontSize:20,color: Colors.black ),),
                                  ),
                                  Container(color: Colors.black,height: 2,width: 300,),
                                  SizedBox(height: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    //crossAxisAlignment: CrossAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Dal Tadka'),
                                          Text('170ml')
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Chicken Korma'),
                                          Text('200ml')
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Cookie'),
                                          Text('2')
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    )],
                ),
              )
            ],
          ),
          bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.none),
        ),
    );


  }
}

