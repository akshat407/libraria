import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libraria/navbar/books/notes.dart';
import 'package:libraria/utils/color.dart';
import 'package:libraria/utils/viewpdf.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';


class nav_book extends StatelessWidget {
  const nav_book({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AIColors.primaryColor1,
        body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset("assets/images/book2.png",alignment: Alignment.centerLeft,)
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
              ),
              SizedBox(height: 20,),
              
              Card(
                color: Colors.white,
                elevation: 8,
                child: Column(
                
                  children: [
                  Text("NEW  UPLOADS",style: GoogleFonts.poppins(fontSize:30,fontWeight:FontWeight.bold,color:Colors.black),),
                  Text("recently added materials",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.bold,color:AIColors.primaryColor2),),
                  Row(
                  children:[
                
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(30),
                      height: 200,width:110,
                      color: Colors.grey[350],
                      child: Image.asset("assets/images/pdf.png",fit: BoxFit.fill),
                    ),
                  ),
                  
                  Expanded(
                    child: Container(margin: EdgeInsets.all(30),
                      height: 200,width:110,
                      color: Colors.grey[350],
                      child: Image.asset("assets/images/pdf.png",fit: BoxFit.fill,),
                    ),
                  ),
                  ]
                ) 
                  ],
              ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 45,width: 180,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AIColors.primaryColor2,),padding: EdgeInsets.all(10),
                child: Text("Formula Sheet",textAlign: TextAlign.center,textDirection: TextDirection.ltr,style: GoogleFonts.poppins(fontSize:18,fontWeight:FontWeight.bold,color:Colors.white)),
                ),
              // SizedBox(height:20),
              Row(
                  children:[
                
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl:'https://drive.google.com/uc?export=view&id=1kS4IUGy9o0ywJ3G4N8jrkwdbU8plvv_S', name: 'CD',));},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,
                        padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("C.D.",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [new BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                          ),
                    ),
                  ),
                  
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl:'https://drive.google.com/uc?export=view&id=1shEG9l3W2c7B0T6nvcf6rlPXp6ZhqHuj', name: 'AI',));},
                      child: Container(margin:EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("A.I.",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                      ),
                    ),
                  ),
                  ]
                ),
                Row(
                  children:[
                
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl:'https://drive.google.com/uc?export=view&id=1j4IJ29UVq3i22AiLYvPcRpFErUsOphsv', name: 'IOT',));},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,
                        padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("IOT",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [new BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                          ),
                    ),
                  ),
                  
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl:'https://drive.google.com/uc?export=view&id=1AcvKPRTX2r9iCk7ngFqj7DbqhzW7dYCK', name: 'CRP',));},
                      child: Container(margin:EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("CRP",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                      ),
                    ),
                  ),
                  ]
                ),
                Row(
                  children:[
                
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl:'https://drive.google.com/uc?export=view&id=12WrYCM68w12s4_GzFxu2Hock87koNT3U',name: "AA Formula sheet"));},
                      child: Container(
                        margin:EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,
                        padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("AA",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [new BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                          ),
                    ),
                  ),
                  
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl:'https://drive.google.com/uc?export=view&id=1uFa2O9wLaixNazc5ukLNzTABH6DChXqJ', name: 'CD',));},
                      child: Container(margin:EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("BCS",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                      ),
                    ),
                  ),
                  ]
                ),
                SizedBox(height: 20,) ,
      
                Container(
                height: 45,width: 250,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AIColors.primaryColor2,),padding: EdgeInsets.all(10),
                child: Text("Internal Paper Vault",textAlign: TextAlign.center,textDirection: TextDirection.ltr,style: GoogleFonts.poppins(fontSize:18,fontWeight:FontWeight.bold,color:Colors.white)),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 100,width: 350,padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueAccent[100]),
                  
                    child: Row(children: [
                    Expanded(
                      child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl: "https://drive.google.com/uc?export=view&id=1QTN-Y1JiGk-Xli7hJqJc78P1AjMD6lux", name: 'CIE 1 Papers'));},
                        child: Container(height: 50,width: 50,padding: EdgeInsets.fromLTRB(5,10,5,5),margin: EdgeInsets.all(10),
                        child: Text("CIE 1",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl: "https://drive.google.com/uc?export=view&id=1w2dfMGXOjIG3g5HM-0t8O3F8TfOWa-8V", name: 'CIE 2 Papers'));},
                        child: Container(height: 50,width: 50,padding: EdgeInsets.fromLTRB(5,10,5,5),margin: EdgeInsets.all(10),
                        child: Text("CIE 2",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl: "https://drive.google.com/uc?export=view&id=1_X9ffMzN7Z_0zTBOLi0qQ8vXO0DapTg2", name: 'CIE 3 Papers'));},
                        child: Container(height: 50,width: 50,padding: EdgeInsets.fromLTRB(5,10,5,5),margin: EdgeInsets.all(10),
                        child: Text("CIE 3",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),),
                      ),
                    ),
                    ],)
                    ),
                SizedBox(height: 30,),
                Container(
                height: 45,width: 300,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AIColors.primaryColor2,),padding: EdgeInsets.all(10),
                child: Text("Semester Exams Archive",textAlign: TextAlign.center,textDirection: TextDirection.ltr,style: GoogleFonts.poppins(fontSize:18,fontWeight:FontWeight.bold,color:Colors.white)),
                ),
                Row(
                  children:[
                
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl: "https://drive.google.com/uc?export=view&id=1uFa2O9wLaixNazc5ukLNzTABH6DChXqJ", name: "CD Semester Papers"));},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,
                        padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("C.D.",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [new BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                          ),
                    ),
                  ),
                  
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl: "https://drive.google.com/uc?export=view&id=1uFa2O9wLaixNazc5ukLNzTABH6DChXqJ", name: "AI Semester Papers"));},
                      child: Container(margin:EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("A.I.",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                      ),
                    ),
                  ),
                  ]
                ),
                Row(
                  children:[
                
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl: "https://drive.google.com/uc?export=view&id=1OPLfEGqENpAzqpsyMyY8QBPFSQ5K43AE", name: "IOT Semester Papers"));},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,
                        padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("IOT",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [new BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                          ),
                    ),
                  ),
                  
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl: "https://drive.google.com/uc?export=view&id=1uFa2O9wLaixNazc5ukLNzTABH6DChXqJ", name: "CRP Semester Papers"));},
                      child: Container(margin:EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("CRP",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                      ),
                    ),
                  ),
                  ]
                ),
                Row(
                  children:[
                
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl: "https://drive.google.com/uc?export=view&id=1kivUV-0Bc5Cgu-G4V3WD3z9Warryp3Tg", name: "AA Semester Papers"));},
                      child: Container(
                        margin:EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,
                        padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("AA",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [new BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                          ),
                    ),
                  ),
                  
                  Expanded(
                    child: InkWell(onTap: (){Get.to(()=>viewpdf(pdfUrl: "https://drive.google.com/uc?export=view&id=1uFa2O9wLaixNazc5ukLNzTABH6DChXqJ", name: "BCS Semester Papers"));},
                      child: Container(margin:EdgeInsets.fromLTRB(30,30,30,15),
                        height: 80,width:80,padding: EdgeInsets.fromLTRB(20,20,20,30),
                        child: Text("BCS",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:24,fontWeight:FontWeight.bold,color:Colors.black)),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 10.0,
                        ),] ),
                      ),
                    ),
                  ),
                  ]
                ),
                SizedBox(height: 20,),
                Container(
                height: 45,width: 250,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AIColors.primaryColor2,),padding: EdgeInsets.all(10),
                child: Text("Lab Assistance Center",textAlign: TextAlign.center,textDirection: TextDirection.ltr,style: GoogleFonts.poppins(fontSize:18,fontWeight:FontWeight.bold,color:Colors.white)),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 100,width: 350,padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueAccent[100]),
                  
                    child: Row(children: [
                    Expanded(
                      child: InkWell(onTap: (){},
                        child: Container(height: 50,width: 50,padding: EdgeInsets.fromLTRB(5,10,5,5),margin: EdgeInsets.all(10),
                        child: Text("IOT",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: InkWell(onTap: (){},
                        child: Container(height: 50,width: 50,padding: EdgeInsets.fromLTRB(5,10,5,5),margin: EdgeInsets.all(10),
                        child: Text("CD",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: InkWell(onTap: (){},
                        child: Container(height: 50,width: 50,padding: EdgeInsets.fromLTRB(5,10,5,5),margin: EdgeInsets.all(10),
                        child: Text("AI",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),),
                      ),
                    ),
                    ],)
                    ),
                    SizedBox(height: 20,),
                    
                    ElevatedButton(onPressed: (){Get.to(()=>notes());},style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(AIColors.primaryColor2)),
                     child: Text("Subject Notes Centre >",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                     SizedBox(height: 30,)    
                    
          
            
            
         
          
            ],
          ),
        ),
        
        ),
    );
   
  }
}