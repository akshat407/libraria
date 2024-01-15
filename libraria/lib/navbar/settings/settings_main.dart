import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libraria/utils/color.dart';
import 'package:velocity_x/velocity_x.dart';

class setting_main extends StatefulWidget {
  const setting_main({super.key});

  @override
  State<setting_main> createState() => _setting_mainState();
}

class _setting_mainState extends State<setting_main> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: 
        Container(
          // margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.only(top: 50),
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width ,
          color: AIColors.primaryColor2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(child: Image.asset("assets/images/settings.png",height: 200,fit:BoxFit.cover,width: 200,color: Colors.grey[200],)),

              SizedBox(height: 40,),

              Text("SETTINGS",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey[200]),)

            ],
          ),
        )
        ),

       Expanded(

        child: Row(
        children: [
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: 150,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Image.asset("assets/images/user.png",height:70 ,),
                  
                  
                  ),
                ),
                SizedBox(height: 20,),
                Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                
              ],
            ),
            margin: EdgeInsets.all(10),
            
          )),
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: 150,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Image.asset("assets/images/boyreading.png",height:70 ,),
                  
                  
                  ),
                ),
                SizedBox(height: 20,),
                Text("Reading History",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                
              ],
            ),
            margin: EdgeInsets.all(10),
            
          )),
        ],
       )),
           Expanded(
        child: Row(
        children: [
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: 150,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Image.asset("assets/images/password.png",height:70 ,),
                  
                  
                  ),
                ),
                SizedBox(height: 20,),
                Text("Change Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                
              ],
            ),
            margin: EdgeInsets.all(10),
            
          )),
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            height: 150,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Image.asset("assets/images/systemupdate.png",height:70 ,),
                  
                  
                  ),
                ),
                SizedBox(height: 20,),
                Text("Version",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                
              ],
            ),
            margin: EdgeInsets.all(10),
            
          )),
        ],
       )),
      ],
    );
  }
}