import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libraria/utils/color.dart';

class notifi extends StatelessWidget {
  const notifi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AIColors.primaryColor1,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text("NOTIFICATION",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),

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
                      
                      color: containerColor,
                      border: Border.all(color: Colors.black)),
                      padding: EdgeInsets.all(10),
                  child: Column(
                    
                    children: [
                      Text(
                        ">The ultimate e-libra",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      
                    ],
                  )),
              ),
            );

      }),


    );
  }
}