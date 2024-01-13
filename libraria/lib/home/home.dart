import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:libraria/utils/color.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Text('HOME',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28)
            ),
            color: AIColors.primaryColor2
          ),
        ),
      ),
      backgroundColor: AIColors.primaryColor1,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AIColors.primaryColor1,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.home),
          Icon(Icons.book),
          Icon(Icons.newspaper),
          Icon(Icons.notification_important),
          Icon(Icons.settings),


        ]),
      
    );
  }
}