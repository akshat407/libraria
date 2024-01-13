import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libraria/utils/color.dart';

class aboutus extends StatelessWidget {
  const aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AIColors.primaryColor1,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text("ABOUT LIBRARIA",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        

      ),
     
     body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Text(
            "Welcome to the new era:Libraria",
            style: TextStyle(
              color: AIColors.primaryColor2,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            
          ),
             
            ),

              Container(
              height: 180,
              width: 350,
              margin: EdgeInsets.only(top: 50, left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff0C6C86),
                  border: Border.all(color: Colors.black)),
                  padding: EdgeInsets.all(10),
              child: Center(
                child: Column(
                  
                  children: [
                    Text(
                      "The ultimate e-library experience designed to revolutionize the way you explore, discover, and immerse yourself in the vast world of literature.Our intelligent search and recommendation system learns from your preferences, ensuring that you always find the perfect read.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    
                  ],
                ),
              )),
              Container(
                
              height: 160,
              width: 350,
              margin: EdgeInsets.only(top: 50, left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffE2DBDB),
                  border: Border.all(color: Colors.black)),
                  padding: EdgeInsets.all(10),
              child: Center(
                child: Column(
                  
                  children: [
                    Text(
                      " Fuel your curiosity, expand your horizons, and redefine the way you experience books. The e-library revolution is here – and it starts with you.Your reading journey is as comfortable and enjoyable as flipping the pages of a physical book.",
                      style: TextStyle(
                      
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    
                  ],
                ),
              )),
              Container(
              height: 180,
              width: 350,
              margin: EdgeInsets.only(top: 50, left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff0C6C86),
                  border: Border.all(color: Colors.black)),
                  padding: EdgeInsets.all(10),
              child: Center(
                child: Column(
                  
                  children: [
                    Text(
                      "Te ultimate e-library experience designed to revolutionize the way you explore, discover, and immerse yourself in the vasth world of literature.Our intelligent search and recommendation system learns from your preferences, ensuring that you always find the perfect read.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    
                  ],
                ),
              )),
      ],
     ),

    );
  }
}