import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:tiffin/screens/splash/components/onboarding_screen.dart';

class Notifications extends StatelessWidget {
  static String routeName = "/notification";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //leading: null,
        title:Text(
          "Your Notifications",
          //textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(126,131, 137, 1),
          ),
        ),
      ),
      body: ListView(
        children: [
          Slidable(
            key: const ValueKey(0),
            startActionPane : ActionPane(
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: (){},),
              children: [
                SlidableAction(
                    onPressed: doNothing,
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: ListTile(
              title: Text(
                'Slide Me',
              ),
            ),
          ),
          SizedBox(height: 10,),
          Slidable(
            key: const ValueKey(0),
            startActionPane : ActionPane(
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: (){},),
              children: [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: ListTile(
              title: Text(
                'Slide Me',
              ),
            ),
          ),
          SizedBox(height: 20,),
          Slidable(
            key: const ValueKey(0),
            startActionPane : ActionPane(
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: (){},),
              children: [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: ListTile(
              title: Text(
                'Slide Me',
              ),
            ),
          ),
          SizedBox(height: 20,),
          Slidable(
            key: const ValueKey(0),
            startActionPane : ActionPane(
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: (){},),
              children: [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: ListTile(
              title: Text(
                'Slide Me',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}