import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  CustomSuffixIcon({this.svgIcon});
final String? svgIcon;

@override
Widget build(BuildContext context) {
  return Padding(
    padding:EdgeInsets.all(getProportionateScreenWidth(20)
      //getProportionateScreenWidth(20),
      //getProportionateScreenWidth(20),
      //getProportionateScreenWidth(20),
    ),
    child: Image.asset(
      svgIcon!,
      height: getProportionateScreenWidth(18),
    ),
  );
}
}