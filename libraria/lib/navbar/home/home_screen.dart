import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libraria/navbar/home/aboutus.dart';
import 'package:libraria/navbar/home/panels.dart';
import 'package:libraria/utils/color.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Map<String,String> bio = {"https://drive.google.com/uc?export=view&id=1jp0iJ1MSjt8EpjTlLkX0AvjuFy1WNb-L":"The Book of Margery Kempe",
  "https://drive.google.com/uc?export=view&id=164N4ItcAsG2I4-zJE3ol1SPofDXiw6Lk":"Kalinski Art",
  "https://drive.google.com/uc?export=view&id=11EeIK0QDOZZW2gBfAeRtS-hVn2doYxB9":"Saint Gemma Galgani",
  "https://drive.google.com/uc?export=view&id=1uUsR6tHNDGiP8MbA1SmJxrpBJa4C0CFl":"Story Catches  You",
  "https://drive.google.com/uc?export=view&id=1oeviZJlEuTNbdiSG2pqeKR9ZupMFwbs0":"Worsted to Westminister"};

  Map<String,String> mag = {"https://drive.google.com/uc?export=view&id=1wp0mkOc-VuikLLAQ8w6UsQn1jM5yijla":"BBC Science Focus",
  "https://drive.google.com/uc?export=view&id=18fifET9v2-UsvpCtKyfcRd_PeoIIATYE":"National Scientist",
  "https://drive.google.com/uc?export=view&id=1DAfi28V3xuwoQoHIziDn35XUEvbGhAK3":"Scientific american",
  "https://drive.google.com/uc?export=view&id=1OEdTOCgPxB9Pwh3lAv1daG2BhXj9rpB9":"The Group Travel",
  "https://drive.google.com/uc?export=view&id=11WgDU9IYC1EGCnzimjxKk1XV6Kb3chrv":"The Group Travel"};

  Map<String,String> eng = {"https://drive.google.com/uc?export=view&id=1d95HxOtiUvfFQDcwSAVlzPIkU5R4vfHL":"Electronics and Communication",
  "https://drive.google.com/uc?export=view&id=1HPprD7g_IeZy4_u7GEASrZa-7csY_SY2":"Fluid Mechanics",
  "https://drive.google.com/uc?export=view&id=1w6PgMM27u3FahxUgJL2k1p1GdHansIkl":"Microprocessor and Microcontroller",
  "https://drive.google.com/uc?export=view&id=1RyLVswYNScjVm72rR9xCVQhrQRZdMunf":"Operating System",
  "https://drive.google.com/uc?export=view&id=1rXg2kAdHe_MMSmesAiGXvRf2YVSNVJ2r":"Testing and Evaluation",
  "https://drive.google.com/uc?export=view&id=1DLRUcS4t4hdqOhIvBR-_Sj6SuESEfpr8":"UG Basic Electrical",
  "https://drive.google.com/uc?export=view&id=1YeiFGjhGfTRhDt9MKCdDgFj9IfLNv7ls":"Engineering Graphics",
  "https://drive.google.com/uc?export=view&id=1hrnhdiB_somLE0Zfkk05jqkBuIWMxrR6":"English",
  "https://drive.google.com/uc?export=view&id=1oLbMh7jkCCkqWJ6qyaZKM_LGU6X04vgo":"Calculus and Linear Algebra"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,foregroundColor: Colors.white,
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
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: AIColors.primaryColor1,
      //   animationDuration: Duration(milliseconds: 200),
      //   onTap: (index){
      //     if(index==0) Get.to(()=>home());
      //     else if(index==1) Get.to(()=>nav_book());



      //   },
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
                width: MediaQuery.of(context).size.width/1.40,
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
                        InkWell(onTap: (){Get.to(()=>panels(intcnt: 5,list: bio,));}, child:Container(height: 80,width: 80,child: Image.asset("assets/images/biography.png"))),SizedBox(height: 5,),
                        Text("Biography")
                        
                          ],
                      ),
                    ),Padding(
                      padding: const EdgeInsets.fromLTRB(13,5,0,5),
                      child: Column(
                        children: [
                        InkWell(onTap: (){Get.to(()=>panels(intcnt: 9,list: eng,));}, child: Container(height: 80,width: 80,child: Image.asset("assets/images/engineer.png"),)),SizedBox(height: 5,),
                        Text("Engineering")
                          ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(13,5,0,5),
                      child: Column(
                        children: [
                        InkWell(onTap: (){Get.to(()=>panels(intcnt: 5,list: mag,));}, child: Container(height: 80,width: 80,child: Image.asset("assets/images/magzine.png"))),SizedBox(height: 5,),
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