import 'package:flutter/material.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/divider_widget.dart';
import 'package:tiffin/widgets/heading_text.dart';
import 'package:tiffin/widgets/sub_heading_text.dart';
import 'package:toggle_switch/toggle_switch.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final double profileHeight = 120;

  // bool _showData = false;
  final double coverHeight = 200;

  //
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
                bottom: Dimensions.height20),
            child: Column(
              children: [
                // Row(
                //   children: [
                //     // CircleAvatar(
                //     //   radius: profileHeight/2,
                //     //   backgroundColor: kLightGrey,
                //     //   backgroundImage: AssetImage("assets/images/Dal.png"),
                //     // ),
                //
                //     SizedBox(width: 10,),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           'Akshika Mittal', style: kBodyHeading1TextBoldBlack,),
                //         Text('@akshika.m', style: kB1BodyText,),
                //         SizedBox(height: Dimensions.height10,),
                //         Container(
                //           height: Dimensions.height30,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(
                //                   Dimensions.width4),
                //               gradient: kPrimaryGradientColor),
                //           child: GestureDetector(
                //             onTap: () {
                //               // Navigator.of(context).push(MaterialPageRoute(
                //               //     builder: (context) => SubscriptionPlanScreen()));
                //             },
                //             child: Align(
                //                 alignment: Alignment.center,
                //                 child: Padding(
                //                   padding: const EdgeInsets.all(8.0),
                //                   child: Text(
                //                     'Edit Profile', style: kSmallButtonText,),
                //                 )),
                //           ),
                //         )
                //       ],
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                TabBar(
                  indicator: BoxDecoration(
                    gradient: kPrimaryGradientColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                    unselectedLabelColor: kBlackColor,
                    unselectedLabelStyle: kB1BodyText,
                    tabs: [
                      Tab(text:'General Details'),
                      Tab(text:'General Details'),
                    ]),
                SizedBox(height: Dimensions.height20,),
                TabBarView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kWhiteColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image(image: AssetImage(
                                    "assets/images/Dal.png"),),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],),
              ],
            ),
          ),
          // child: ListView(
          //   //padding: EdgeInsets.only(left: 20,right: 20),
          //   children: <Widget>[
          //     buildTop(),
          //     buildContent(),
          //   ],
          // ),
        ),
      ),
    );
  }

  Widget General() =>
      Column(
        children: [
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: kWhiteColor,
              ),
              child: Icon(Icons.email_rounded),
            ),
            title: Text('akshika.mittal99@gmail.com', style: kB1BodyText,),
          ),
        ],
      );

  Widget Subscription() => Text("Syed");

  void toggleData(int n) {
    if (n == 0) {
      Text("Akshika");
    }
    else if (n == 1) {
      Text('Syed');
    }
  }
//   Widget buildTop() {
//     final double top = coverHeight - profileHeight / 2;
//     final double bottomMargin = profileHeight/2;
//     return Stack(
//       clipBehavior: Clip.none,
//       alignment: Alignment.center,
//       children: [
//         Container(
//           //color: Color(0xFFF5F5F5),
//             margin: EdgeInsets.only(bottom: bottomMargin),
//             child: buildCoverImage()),
//         Positioned(
//             top: top,
//             child: buildProfileImage()),
//       ],
//     );
//   }
//
//     Widget buildCoverImage()=> Container(
//       decoration: BoxDecoration(
//         gradient: kPrimaryGradientColor,
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(20),
//           bottomRight: Radius.circular(20),
//         ),
//
//         // image: DecorationImage(
//         //   image: AssetImage(''),
//         // ),
//       ),
//       width: double.infinity,
//       height: coverHeight,
//     );
//
//     Widget buildProfileImage()=>CircleAvatar(
//       radius: profileHeight/2,
//       backgroundColor: kWhiteColor,
//       backgroundImage: AssetImage("assets/images/Dal.png"),
//
//     );
// }
//
//   Widget buildContent()=> Container(
//     color: Color(0xFFF5F5F5),
//     child: Padding(
//       padding: EdgeInsets.only(left:20.0,right: 20),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 8,
//           ),
//           Text(
//             'Akshika Mittal',
//             style: kH1Heading,
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           Text(
//             'Hub12345678',
//             style: kB1BodyText,
//           ),
//           Text(
//             '+91-9453010441'
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           Container(
//             height: 250,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: kWhiteColor,
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(top:20.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Pro ',
//                         style: kH1Heading,
//                       ),
//                       Text(
//                         'Gold ',
//                         style: kH1Heading,
//                       ),
//                       Text(
//                         'Member',
//                         style: kH1Heading,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Text(
//                     'start date - 07/03/2023',
//                     style: kB1BodyText,
//                   ),
//                   Text(
//                     'end date - 08/04/2023',
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 100,
//                         width: 70,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFF5F5F5),
//                           borderRadius: BorderRadius.circular(3),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             //Image.asset("assets/icons/lunch.png"),
//                             ShaderMask(
//                               blendMode: BlendMode.srcATop,
//                               shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
//                               child: Icon(
//                                   Icons.wb_sunny_outlined,
//                                   size: 35,
//                                   //color: kMainThemeColor,
//                               ),
//                             ),
//                             Text(
//                               '18',
//                               style: kB1BodyText,
//                             ),
//                             Text(
//                               'Lunch',
//                               style: kB1BodyText,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 90,),
//                       Container(
//                         height: 100,
//                         width: 70,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFF5F5F5),
//                           borderRadius: BorderRadius.circular(3),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             //Image.asset("assets/icons/dinner.png"),
//                             ShaderMask(
//                                 blendMode: BlendMode.srcATop,
//                                 shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
//                                 child: Icon(Icons.bedtime_outlined,size: 30,)),
//                             Text(
//                               '20',
//                               style: kB1BodyText,
//                             ),
//                             Text(
//                               'Dinner',
//                               style: kB1BodyText,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 8,),
//           DividerWidget(),
//           Container(
//             height: 100,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: kWhiteColor,
//               borderRadius: BorderRadius.circular(6),
//             ),
//             child: Padding(
//               padding: EdgeInsets.only(left:15.0,right: 10,top: 15),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     children:[
//                     Image.asset("assets/icons/office.png"),
//                     SizedBox(width: 5,),
//                     Text(
//                       'Office',
//                       style: kBodyHeading1TextBoldBlack,
//                       ),
//                     ],
//                   ),
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       'HUB211002',
//                       style: kB1BodyText,
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       '304/104 Dariyabad',
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           Container(
//             height: 100,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: kWhiteColor,
//               borderRadius: BorderRadius.circular(6),
//             ),
//             child: Padding(
//               padding: EdgeInsets.only(left:15.0,right: 10,top: 15),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     children:[
//                       Image.asset("assets/icons/home.png"),
//                       SizedBox(width: 5,),
//                       Text(
//                         'Home',
//                         style: kBodyHeading1TextBoldBlack,
//                       ),
//                     ],
//                   ),
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       'HUB211002',
//                       style: kB1BodyText,
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       '304/104 Dariyabad',
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 8,
//           ),
//         ],
//       ),
//     ),
//   );

}
