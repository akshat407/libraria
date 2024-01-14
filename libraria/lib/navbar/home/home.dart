import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraria/home/aboutus.dart';
import 'package:libraria/home/panels.dart';
import 'package:libraria/navbar/nav_book.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:libraria/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        title: Text('HOME',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),
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
        animationDuration: Duration(milliseconds: 200),
        onTap: (book) {
          Get.to(()=>nav_book());
        },  
        items: [
          Icon(Icons.home),
          Icon(Icons.book),
          Icon(Icons.newspaper),
          Icon(Icons.notification_important),
          Icon(Icons.settings),


        ]),
        body: Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/7,
                margin: EdgeInsets.all(12),padding: EdgeInsets.all(15),
                decoration: BoxDecoration(color: AIColors.primaryColor2,borderRadius:BorderRadius.all(Radius.circular(20)) ),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.start ,
                  children: [
                    Text("What are you looking at the library ?",style:GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold,fontSize:16.0),),
                    SizedBox(height: 20,),
                    SearchBar(
                      
                      elevation: null,hintText: "Search here",constraints: BoxConstraints(minHeight: 40),leading: Icon(Icons.search), 
                    )],
                ),

              ),
              Image.asset("assets/images/librariaText.png"),SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width/1.45,
                decoration: BoxDecoration(color: AIColors.primaryColor2,
                borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: EdgeInsets.all(5),alignment: Alignment.center ,
                child: Text("Pick from different sections >",style: GoogleFonts.poppins(fontSize:18,color:Colors.white),),
              ),
              
              Container(
                  height: MediaQuery.of(context).size.height/6,padding: EdgeInsets.all(5),margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(color:Color.fromARGB(255, 79, 162, 214),
                borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(11,5,0,5),
                      child: Column(
                        children: [
                        InkWell(onTap: (){Get.to(()=>panels());}, child:Container(height: 80,width: 80,child: Image.asset("assets/images/biography.png"))),SizedBox(height: 5,),
                        Text("Biography")
                        
                          ],
                      ),
                    ),Padding(
                      padding: const EdgeInsets.fromLTRB(13,5,0,5),
                      child: Column(
                        children: [
                        InkWell(onTap: (){}, child: Container(height: 80,width: 80,child: Image.asset("assets/images/engineer.png"),)),SizedBox(height: 5,),
                        Text("Engineering")
                          ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(13,5,0,5),
                      child: Column(
                        children: [
                        InkWell(onTap: (){}, child: Container(height: 80,width: 80,child: Image.asset("assets/images/magzine.png"))),SizedBox(height: 5,),
                        Text("Magzines")
                          ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(13,5,0,5),
                      child: Column(
                        children: [
                        InkWell(onTap: (){Get.to(aboutus());},
                          child: Container(
                            
                            height: 80,width: 80,child: Image.asset("assets/images/aboutus.png")),
                        ),SizedBox(height: 5,),
                        Text("About Us")
                          ],
                      ),
                    )
                  ],
                ), 
              ),
              Container(
                height:MediaQuery.of(context).size.height/7.5,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(12),padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: AIColors.primaryColor2,borderRadius:BorderRadius.all(Radius.circular(20)),),
                child:Column(
                  children:[
                    Text("LIBRARIES REDEFINED",style:GoogleFonts.poppins(fontSize:22,color:Colors.white,fontWeight: FontWeight.bold) ,),
                  Text("Bringing the campus library to your fingertips...",style:GoogleFonts.poppins(fontSize:18,color:Colors.white) ,)
                  ] 
                )
              )
            ],

           ),
        ),
      
    );
  }
}