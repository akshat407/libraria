import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libraria/utils/color.dart';

class college extends StatelessWidget {
  const college({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AIColors.primaryColor1,
      

      body: ListView.builder(
        itemCount: 20,
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
                          "The ultimate e-libra",
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