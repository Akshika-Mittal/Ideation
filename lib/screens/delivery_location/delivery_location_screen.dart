import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';
import '../../widgets/AppBarWidget.dart';
import '../../widgets/screen_heading.dart';
import 'package:tiffin/screens/delivery_location/components/body.dart';

class DeliveryLocationScreen extends StatefulWidget {
  const DeliveryLocationScreen({Key? key}) : super(key: key);
  static String routeName = "/delivery_location";

  @override
  State<DeliveryLocationScreen> createState() => _DeliveryLocationScreenState();
}

class _DeliveryLocationScreenState extends State<DeliveryLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'')),
      body: Body(),
    );
  }
}
