import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libraria/utils/color.dart';
import 'package:velocity_x/velocity_x.dart';


class panels extends StatelessWidget {
  const panels({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,centerTitle: true,
        title: Text("Available Books",style: GoogleFonts.poppins(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28)
            ),
            color: AIColors.primaryColor2
            )
            )
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,20,10,10),
        child: GridView.builder(
        itemCount: 14,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent:200,crossAxisSpacing: 8,mainAxisSpacing: 10,crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            
            decoration: BoxDecoration(color: AIColors.primaryColor2),
          );
        },   
        
          
          
        ), 
        ),
        
        );
      
  }
}