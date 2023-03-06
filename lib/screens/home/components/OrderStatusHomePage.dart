import 'package:flutter/material.dart';

class OrderStatusHomeScreen
{
  final icon;
  final color;
  final active;
  final title;
  final description;
  OrderStatusHomeScreen(this.icon,this.color,this.active,this.title,this.description);

}
class OrderStatusHomeScreenControl
{
  List<OrderStatusHomeScreen> OrderStatusCurrent=[
    OrderStatusHomeScreen(Icons.poll_outlined, Color(0xFFEB4749),Colors.white, 'Polling', 'Polling will close at 11:59pm today. Do poll for your favourite items.'),
    OrderStatusHomeScreen(Icons.food_bank_outlined,Color(0xFFEB4749), Colors.white,'Preparing', 'Our chefs are preparing the highest polled items with love and right amount of spices.'),
    OrderStatusHomeScreen(Icons.hail_rounded, Color(0xFFEB4749), Colors.white,'Handed over to vaulet', 'Your delicious meal is handed over to your vaulet and will be reaching you anytime soon.'),
    OrderStatusHomeScreen(Icons.delivery_dining_outlined, Color(0xFFEB4749),Colors.white, 'Out for delivery', 'We are just there, hold on your hunger'),
    OrderStatusHomeScreen(Icons.done_all_outlined, Color(0xFFEB4749), Colors.white,'Delivered', 'Enjoy your delicacy and we will meet again today or tommorow with your next item'),

  ];
}

