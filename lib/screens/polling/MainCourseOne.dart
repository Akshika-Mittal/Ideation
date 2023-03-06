import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polls/flutter_polls.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/AppBarWidget.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/screens/polling/mainCourse1.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';

class MainCourseOne extends StatefulWidget {
  const MainCourseOne({Key? key}) : super(key: key);

  @override
  State<MainCourseOne> createState() => _MainCourseOneState();
}

class _MainCourseOneState extends State<MainCourseOne> {
  @override
  // int id= 1;

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
        child: AppBarWidget(),
      ),
      body: Stack(
        children: [
          Container(
            height: Dimensions.screenHeight,
            width:  Dimensions.screenWidth,
            //color: Color(0xFFE8E8E8),
            child: Padding(
              padding: EdgeInsets.all(Dimensions.radius20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 10,),
                    HeadingText(
                      text: "Non Vegeterian",
                    ),
                    //  SizedBox(height: 5,),
                    HeadingText(
                      text: "Tommorow's Menu",
                      size: Dimensions.font26,
                      color: kBlackColor,
                    ),
                    SizedBox(
                      height: (Dimensions.height10)/2,
                    ),
                    SubHeadingText(
                      text: "Poll for your favourite items to include in tomorow’s menu.",
                    ),
                    SizedBox(
                      height: (Dimensions.height10)/2,
                    ),
                  ],
              ),
            ),
          ),

          Container(
            height: Dimensions.screenHeight,
            margin: EdgeInsetsDirectional.only(top: Dimensions.height80+Dimensions.height40),
            child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: polls().length,
              itemBuilder: (BuildContext context, int index) {
                final Map<String, dynamic> poll = polls()[index];
                final int days = DateTime(
                  poll['end_date'].year,
                  poll['end_date'].month,
                  poll['end_date'].day,
                )
                    .difference(DateTime(
                  DateTime.now().year,
                  DateTime.now().month,
                  DateTime.now().day,
                ))
                    .inDays;

                return Container(
                  color: kWhiteColor,
                  //height: MediaQuery.of(context).size.height-200,
                  //margin: const EdgeInsets.only(bottom: 100),
                  padding: EdgeInsets.only(bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                  child: Column(
                    children: [
                      FlutterPolls(
                        pollId: poll['id'].toString(),
                        // hasVoted: hasVoted.value,
                        // userVotedOptionId: userVotedOptionId.value,
                        onVoted: (PollOption pollOption,
                            int newTotalVotes) async {
                          await Future.delayed(
                              const Duration(seconds: 0));

                          /// If HTTP status is success, return true else false
                          return true;
                        },
                        votedBackgroundColor:Colors.white,

                        pollEnded: days < 0,
                        pollTitle: Align(
                          alignment: Alignment.centerLeft,
                          child: HeadingText(
                            text: poll['question'],
                            size: Dimensions.font26,
                            color: kBlackColor,
                            ),
                          ),
                        pollOptions: List<PollOption>.from(
                          poll['options'].map(
                                (option) {
                              var a = PollOption(
                                id: option['id'],
                                title: Text(
                                  option['title'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54,
                                  ),
                                ),
                                votes: option['votes'],
                              );
                              return a;
                            },
                          ),
                        ),
                        votedPercentageTextStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        metaWidget: Row(
                          children: [
                            SizedBox(width: Dimensions.width4 ),
                            const Text(
                              '•',
                            ),
                            SizedBox(
                              width: Dimensions.width4,
                            ),
                            SubHeadingText(
                              text: days < 0 ? "ended" : "ends $days days",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Positioned(
            bottom: 0,
            child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffEB4749),
                  child: MaterialButton(onPressed: (){} ,
                      child :Text('Proceed', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700) ) ),
                )
            ),
          ),
        ], ),
    );
  }
}