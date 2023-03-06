import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tiffin/utils/size_config.dart';

class socialCard extends StatelessWidget {
  socialCard({required this.icon,required this.press});
  final String icon;
  final Function() press;

  @override


  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          padding: EdgeInsets.all(getProportionateScreenWidth(12)),
          width:getProportionateScreenWidth(50),
          height:getProportionateScreenHeight(50),
          decoration: BoxDecoration(

              color: Color(0xFFF5F6F9),
              shape: BoxShape.circle,
          ),
          child: Image.asset(icon,),
      ),
    );
  }
}


