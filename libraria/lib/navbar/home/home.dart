import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:libraria/navbar/books/nav_book.dart';
import 'package:libraria/navbar/home/aboutus.dart';
import 'package:libraria/navbar/home/home_screen.dart';
import 'package:libraria/navbar/home/panels.dart';
import 'package:libraria/navbar/settings/settings_main.dart';
import 'package:libraria/navbar/news/news_main.dart';
import 'package:libraria/navbar/notifications/notification_main.dart';
import 'package:libraria/navbar/settings/settings_main.dart';


import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:libraria/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

class home extends StatefulWidget {
  
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
int index=0;
final screens=[
  homescreen(),
  nav_book(),
  newsmain(),
  notifi(),
  setting_main()

];
  @override
  Widget build(BuildContext context) {
    final items= [
          Icon(Icons.home),
          Icon(Icons.book),
          Icon(Icons.newspaper),
          Icon(Icons.notification_important),
          Icon(Icons.settings),


    ];
    return Scaffold(
      backgroundColor: AIColors.primaryColor1,
      body: screens[index],
       bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        animationDuration: Duration(
          milliseconds: 300), 
          
          items: items,
          index: index,
          onTap: (index) => 
          setState(() {
            this.index=index;
          }),
          
       ),
    );      
  


  }
}