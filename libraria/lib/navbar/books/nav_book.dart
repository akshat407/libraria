import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libraria/utils/color.dart';
import 'package:velocity_x/velocity_x.dart';


class nav_book extends StatelessWidget {
  const nav_book({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AIColors.primaryColor1,
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/booktable.png")
                  )
                  ),
                Positioned(
                  top: 80,left: 20,
                  child: SearchBar(
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(15,5,20,5)),leading: Icon(Icons.search_rounded,color: Colors.white,),
                  hintText: "Search here...",
                  hintStyle:MaterialStateProperty.all(TextStyle(color: Colors.grey[400])),
                  textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                  backgroundColor:MaterialStateProperty.all(AIColors.primaryColor2),
                  constraints:BoxConstraints(maxWidth: MediaQuery.of(context).size.width-40)) ,
                  )
                    
              ],//children
            ),SizedBox(height: 30,),
            Text("NEW  UPLOADS",style: GoogleFonts.poppins(fontSize:30,fontWeight:FontWeight.bold,color: Colors.black),)
        
          ],
        ),
      ),
      
      );
   
  }
}