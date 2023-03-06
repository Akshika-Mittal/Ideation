import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/home/home_screen.dart';

import 'address.dart';

class OfficeAddress extends StatelessWidget {
  static String routeName ="/officeAddress";
  const OfficeAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AddressDetails(
        heading: 'Add your Office Address',
        press:  () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));},
      ),
    );
  }
}
