import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home/home_screen.dart';
import 'address.dart';

class CollegeAddress extends StatelessWidget {
  static String routeName ="/collegeAddress";
  const CollegeAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AddressDetails(
        heading: 'EnterAddress',
        press: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));},
      ),
    );
  }
}
