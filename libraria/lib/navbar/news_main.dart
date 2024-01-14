import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libraria/utils/color.dart';

class newsmain extends StatefulWidget {
  const newsmain({super.key});

  @override
  State<newsmain> createState() => _newsmainState();
}

class _newsmainState extends State<newsmain> {
  @override
  Widget build(BuildContext context) {
    const length=4;
    return Scaffold(
        backgroundColor: AIColors.primaryColor1,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          title: Text(
            "EXPLORE",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationThickness: 5 ),
          ),
          bottom: TabBar(tabs: [
            Tab(text: "Trending",),
            Tab(text: "Trending",),
            Tab(text: "Trending",),
            Tab(text: "Trending",),
            

          ],

          ),
        )
      
        );
  }
}
