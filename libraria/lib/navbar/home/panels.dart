import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libraria/utils/color.dart';
import 'package:libraria/utils/viewpdf.dart';
import 'package:velocity_x/velocity_x.dart';


class panels extends StatefulWidget {
  final int intcnt;final Map list;
  const panels({super.key, required this.intcnt, required this.list});

  @override
  State<panels> createState() => _panelsState();
}

class _panelsState extends State<panels> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,centerTitle: true,foregroundColor: Colors.white,
        title: Text("Available Books",style: GoogleFonts.poppins(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28)
            ),
            color: AIColors.primaryColor2
            )
            )
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,20,10,10),
        child: GridView.builder(
        itemCount: widget.intcnt,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent:185,crossAxisSpacing: 15,mainAxisSpacing: 30,crossAxisCount: 3),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){Get.to(viewpdf(pdfUrl: widget.list.keys.toList()[index], name: widget.list.values.toList()[index]));},
            highlightColor: Colors.black,
            child: Column(
              children: [
                Container(
                  child: Image.asset("assets/images/pdf.png",fit: BoxFit.fill,),
                  decoration: BoxDecoration(color: Colors.grey[350]),
                ),
                SizedBox(height: 5,),
                Text(widget.list.values.toList()[index],textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 14,color: Colors.black),),
              ],
            ),
          );
        },   
        
          
          
        ), 
        ),
        
        );
      
  }
}