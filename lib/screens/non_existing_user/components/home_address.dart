import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/non_existing_user/components/office_address.dart';

import 'address.dart';

class HomeAddress extends StatelessWidget {
  static String routeName ="/homeAddress";
  const HomeAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AddressDetails(
        heading: 'Add your Home Address',
        press:  () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => OfficeAddress()));},
      ),
    );
  }
}
