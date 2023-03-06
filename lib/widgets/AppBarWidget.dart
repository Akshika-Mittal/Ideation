import 'package:flutter/material.dart';
import 'package:tiffin/components/notifications.dart';
import 'package:tiffin/utils/AppColors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 2,
      title: Center(
        child: Image.asset('assets/images/tiff_black.png',
          //fit: BoxFit.fitHeight,
          height: 25,
        ),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.notifications_on,
              color: kIconColor,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notifications()));
            }),
      ],
      iconTheme: IconThemeData(
          color: kIconColor,
      ),
    );
  }
}
