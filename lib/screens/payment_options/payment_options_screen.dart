import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
import 'package:tiffin/widgets/screen_heading.dart';
import 'package:tiffin/screens/payment_options/components/body.dart';

import '../../widgets/AppBarWidget.dart';
class PaymentOptions extends StatelessWidget {
  static String routeName = "/payment_options";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Payment Options')),

      body: Body(cardNumber: '',),
    );
  }
}
