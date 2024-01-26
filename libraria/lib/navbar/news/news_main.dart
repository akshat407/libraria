import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libraria/navbar/news/college.dart';



import 'package:libraria/navbar/news/trending.dart';
import 'package:libraria/navbar/news/trending_new.dart';

import 'package:libraria/utils/color.dart';

class newsmain extends StatefulWidget {
  const newsmain({super.key});

  @override
  State<newsmain> createState() => _newsmainState();
}

class _newsmainState extends State<newsmain>with TickerProviderStateMixin {

  late TabController _tabController;
  @override
     void initState() {
       super.initState();
      _tabController = new TabController(vsync: this, length: 3);
      _tabController.addListener(_handleTabSelection);
     }
     void _handleTabSelection() {
        setState(() {
         });
     }
  @override
  Widget build(BuildContext context) {
    
    // var length=2;
    return Scaffold(
      backgroundColor: AIColors.primaryColor1,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text("EXPLORE",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        // centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AIColors.primaryColor2,
          tabs:[
          Tab(
            child: Text("Trending",style: TextStyle(color: _tabController.index==0?AIColors.primaryColor2:Colors.black
            ),),
          ),
          Tab(
            child: Text("College",style: TextStyle(color: _tabController.index==0?AIColors.primaryColor2:Colors.black),),
          ),
        ] ),
    
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
        // Center(child: HomeScreen()),
        Center(child: college(),)
      ]
      ),
    );
  }
}