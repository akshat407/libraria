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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                    child: FittedBox(
                      child: Container(
            
                        
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        decoration: BoxDecoration(
                            
                            color: AIColors.primaryColor2,
                            border: Border.all(color: Colors.black)),
                            padding: EdgeInsets.all(10),
                        child: Column(
                          
                          children: [
                            Text(
                              "Check out our New Arrivals 📚",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            
                          ],
                        )),
                    ),
                  ),
                  Center(
                    child: FittedBox(
                      child: Container(
            
                        
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        decoration: BoxDecoration(
                            
                            color: Colors.grey,
                            border: Border.all(color: Colors.black)),
                            padding: EdgeInsets.all(10),
                        child: Column(
                          
                          children: [
                            Text(
                              "Hurry Up!!Be a part of the phase shift events asap🏃",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            
                          ],
                        )),
                    ),
                  ),
                  Center(
                    child: FittedBox(
                      child: Container(
            
                        
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        decoration: BoxDecoration(
                            
                            color: AIColors.primaryColor2,
                            border: Border.all(color: Colors.black)),
                            padding: EdgeInsets.all(10),
                        child: Column(
                          
                          children: [
                            Text(
                              "Want Bangalore Greens? Join the plantdrive initiative 🌱",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            
                          ],
                        )),
                    ),
                  ),
                  Center(
                    child: FittedBox(
                      child: Container(
            
                        
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        decoration: BoxDecoration(
                            
                            color: Colors.grey,
                            border: Border.all(color: Colors.black)),
                            padding: EdgeInsets.all(10),
                        child: Column(
                          
                          children: [
                            Text(
                              "Don’t miss out on the Ram Mandir Special Screening 🙏",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            
                          ],
                        )),
                    ),
                  ),
                  Center(
                    child: FittedBox(
                      child: Container(
            
                        
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        decoration: BoxDecoration(
                            
                            color: AIColors.primaryColor2,
                            border: Border.all(color: Colors.black)),
                            padding: EdgeInsets.all(10),
                        child: Column(
                          
                          children: [
                            Text(
                              "Check out the new Arrivals!",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            
                          ],
                        )),
                    ),
                  ),
                   Center(
                    child: FittedBox(
                      child: Container(
            
                        
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        decoration: BoxDecoration(
                            
                            color: Colors.grey,
                            border: Border.all(color: Colors.black)),
                            padding: EdgeInsets.all(10),
                        child: Column(
                          
                          children: [
                            Text(
                              "Check out your attendance and marks on the dhi portal!",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            
                          ],
                        )),
                    ),
                  ),
                  Center(
                    child: FittedBox(
                      child: Container(
            
                        
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        decoration: BoxDecoration(
                            
                            color: AIColors.primaryColor2,
                            border: Border.all(color: Colors.black)),
                            padding: EdgeInsets.all(10),
                        child: Column(
                          
                          children: [
                            Text(
                              "Last date to apply for BE Honors Degree is 31/12/23",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            
                          ],
                        )),
                    ),
                  ),
                  Center(
                    child: FittedBox(
                      child: Container(
            
                        
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        decoration: BoxDecoration(
                            
                            color: Colors.grey,
                            border: Border.all(color: Colors.black)),
                            padding: EdgeInsets.all(10),
                        child: Column(
                          
                          children: [
                            Text(
                              "5th Sem results are out!! ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            
                          ],
                        )),
                    ),
                  ),
                  Center(
                    child: FittedBox(
                      child: Container(
            
                        
                        width: MediaQuery.sizeOf(context).width,
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        decoration: BoxDecoration(
                            
                            color: AIColors.primaryColor2,
                            border: Border.all(color: Colors.black)),
                            padding: EdgeInsets.all(10),
                        child: Column(
                          
                          children: [
                            Text(
                              "LIVE SALE at BookMart from 2pm-6pm",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            
                          ],
                        )),
                    ),
                  ),
          ],
        
        ),
      )
    );
  }
}