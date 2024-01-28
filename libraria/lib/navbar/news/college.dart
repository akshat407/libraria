import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libraria/utils/color.dart';

class college extends StatelessWidget {
  const college({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> item =[
      "ATTENTION ..!!! Everybody assemble in AUDI 1 for attending Speech of Narendra Modi 🔴",
      "FINAL WEEK BEFORE SEMESTER END .... Students wrapping AAT's ... CHAOS UNFOLDS ...",
      "Bullz Model 2 show near PJ BLOCK front gate ..Have a look!!!!",
      "CIE AROUND THE CORNER.... check previous year paper here",
      "Last day for FEE UPLOAD FOR 3RD SEMESTER ... pay at the earliest ....",
      ];
    return Scaffold(
      backgroundColor: AIColors.primaryColor1,
      

      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          Color containerColor = index % 2 == 0 ? AIColors.primaryColor2 : Colors.grey;
          Color textColor = index % 2 == 0 ? Colors.white : Colors.black;


          return  Center(
              child: FittedBox(
                child: Container(

                  
                  width: MediaQuery.sizeOf(context).width,
                  margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: containerColor,
                      border: Border.all(color: Colors.black)),
                      padding: EdgeInsets.all(10),
                  child: Center(
                    child: Column(
                      
                      children: [
                        Text(
                          item[index],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        
                      ],
                    ),
                  )),
              ),
            );

      }),


    );
  }
}