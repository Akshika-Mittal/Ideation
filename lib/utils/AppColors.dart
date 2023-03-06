import 'dart:ui';
import 'package:flutter/material.dart';

import 'dimensions.dart';

 //red color all over , next text color //
  const kMainThemeColor = Color(0xFFCB4749);

  //light red color
  const kLightRedColor = Color(0xFFEB4749);

  //background color,unselected dot color,slider screen text,skip text color
   const kAppBackgroundColor = Color(0xFFF2F2F2);
   const kDrawerBgColor = Color(0xFFE6E6E6);

   //text color
    const kTextColor = Color(0xFF8A8787);

  //gradient color
  const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFEB4749),
      Color(0xFF720D0E),],
  );

  //screen title texts, texts also
  const kScreenHeadingColor = Color(0xFF7E8389);

  //iconcolor,screen heading texts
  const kIconColor = Color(0xFF7E8389);

  //white text color
  const kWhiteColor = Color(0xFFFFFFFF);

  //black text color
  const kBlackColor = Color(0xFF000000);

  //divider color
  const kDividerColor = Color(0xFF7E8389);

  //Bold = H1 font type
  TextStyle kH1Heading = TextStyle(
    fontFamily: 'Move',
    fontSize: Dimensions.font26+Dimensions.font10,
    fontWeight: FontWeight.w300,
    color: Color(0xFF262626),
  );
