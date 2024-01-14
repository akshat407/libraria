import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libraria/utils/color.dart';
import 'package:velocity_x/velocity_x.dart';


class setting_main extends StatelessWidget {
  const setting_main({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(350),
        child: Container(
          color: AIColors.primaryColor2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[SizedBox(height: 50,),
              Image.asset("assets/images/settings.png",fit: BoxFit.cover,height: 200,width: 200,color: Colors.white,),
              SizedBox(height: 20,),
              Text("SETTINGS",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)
            ]
          ),
        ),
      ),
    );
  }
}