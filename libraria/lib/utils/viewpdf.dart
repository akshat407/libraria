import'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:libraria/utils/color.dart';
import'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class viewpdf extends StatefulWidget {
 

  final String pdfUrl;final String name;
  viewpdf({super.key,required this.pdfUrl,required this.name});

  @override
  State<viewpdf> createState() => _viewpdfState();
}

class _viewpdfState extends State<viewpdf> {
  
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.white,
        title: Text(widget.name,style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.white),),
        backgroundColor: AIColors.primaryColor2,
        centerTitle: true,
        
      ),
      body:SfPdfViewer.network(widget.pdfUrl),
    );
  }
}

// "https://drive.google.com/uc?export=view&id=1kS4IUGy9o0ywJ3G4N8jrkwdbU8plvv_S"