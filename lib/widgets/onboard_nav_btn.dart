import 'package:flutter/material.dart';
import 'package:tiffin/utils/dimensions.dart';
class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({
    Key? key,
    required this.name,
    required this.onPressed,
  }) : super(key: key);
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular((Dimensions.font12)/2),
      splashColor: Colors.black12,
      child: Padding(
        padding: EdgeInsets.all(Dimensions.height4),
        child: Text(
          name,
          //style: kBodyText1,
        ),
      ),
    );
  }
}