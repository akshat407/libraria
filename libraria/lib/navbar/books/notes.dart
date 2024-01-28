import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libraria/utils/color.dart';
import 'package:libraria/utils/viewpdf.dart';

class notes extends StatelessWidget {
  const notes({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['AI Unit 1', 'AI Unit 2', 'AI Unit 3','CD Unit 1','CD Unit 2','CD Unit 1ppt','IOT Unit 1','IOT Unit 2','Cryptography unit 1'];
    final List<String> url = 
    <String>['https://drive.google.com/uc?export=view&id=1ceiNf9zJKJjFd4GNdvKDkbQTOJof68GJ',
    'https://drive.google.com/uc?export=view&id=1Ok0GHq-gfzvri4gCbZRDgxtEE-GGNcD5',
    'https://drive.google.com/uc?export=view&id=1NGMZLQt0Er9hFnoISmCpnZhQI6RDohVS',
    'https://drive.google.com/uc?export=view&id=1xTF7lPh1GsfNoUHK7pOkPRc9SekMJqVX',
    'https://drive.google.com/uc?export=view&id=1KI9s3LHr0R1wrC6fSn-Lc8pLU4Il3t5S',
    'https://drive.google.com/uc?export=view&id=130s6bBaYwBbKm9ZVNfVviLg2LhTC9fiL',
    'https://drive.google.com/uc?export=view&id=16kJqZ0m9C4mqvuLjt9G1SbuZ8u0C2xV9',
    'https://drive.google.com/uc?export=view&id=1lyKOm2q68FlGEhnpvzafu2YeJJQV0ed0',
    'https://drive.google.com/uc?export=view&id=1lh3ZGwR7PHKrAjB2ufZ60bWUDMmJggAb'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AIColors.primaryColor2,foregroundColor: Colors.white,
        title: Text('Subjects notes centre',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white),),
        
      ),
      body:ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return InkWell(
        onTap: (){Get.to(()=>viewpdf(pdfUrl: url[index], name: entries[index]));},
        child: Container(
          height: 50,padding: EdgeInsets.all(10),
          color: Colors.grey[350],
          child: Text(' ${entries[index]}',style: GoogleFonts.poppins(fontSize: 16),),
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  )
    );
  }
}