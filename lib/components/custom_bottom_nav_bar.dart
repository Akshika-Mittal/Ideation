import 'package:flutter/material.dart';
import 'package:tiffin/components/todays_menu.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/about_us/about_us_screen.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/screens/profile/profile_screen.dart';

import '../screens/offers/offers.dart';
import '../screens/track_order/track_order_screen.dart';

class CustomBottomNavBar extends StatelessWidget {

  CustomBottomNavBar({required this.selectedMenu});
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: kLightGrey,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(screenWidth/105.88),
          topRight: Radius.circular(screenWidth/105.88),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed:(){Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Todays_menu()));},
              icon: Icon(
                Icons.restaurant_menu_rounded,
                color: MenuState.menu == selectedMenu?Colors.red:Colors.black,
              ),
            ),
            IconButton(
              onPressed:()=> Navigator.pushNamed(context,HomeScreen.routeName),
              icon: Icon(
                Icons.home,
                color: MenuState.home == selectedMenu?Colors.red:Colors.black,
              ),
            ),
            IconButton(
              onPressed:()=> Navigator.pushNamed(context,OffersScreen.routeName),
              icon: Icon(
                Icons.local_offer_rounded,
                color: MenuState.offers == selectedMenu?Colors.red:Colors.black,
              ),
            ),
            IconButton(
              onPressed:(){Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TrackOrderScreen()));},

              icon: Icon(
                Icons.assistant_navigation,
                color: MenuState.profile == selectedMenu?Colors.red:Colors.black,
              ),
            ),
            // IconButton(
            //   onPressed:()=> Navigator.pushNamed(context,AboutUs.routeName),
            //   icon: Icon(
            //     Icons.settings,
            //     color: MenuState.howItWorks == selectedMenu?Colors.red:Colors.black,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
