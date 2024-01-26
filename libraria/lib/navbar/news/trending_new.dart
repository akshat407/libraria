// import 'package:flutter/material.dart';
// import 'package:libraria/utils/fetch_news.dart';
// import 'package:libraria/utils/news_art.dart';
// // import 'package:taza_khabar/fetch_news.dart';
// // import 'package:taza_khabar/news_art.dart';

// import 'news_cont.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {


//   late NewsArt newsArt;

//   GetNews()
//   async {
//     newsArt=await Fetch_news.fetch_news();
//     setState(() {
      
//     });
//   }
//  @override
//   void initState() {
//     // TODO: implement initState
//     // Fetch_news.fetch_news();
//     GetNews();
//     super.initState();
//   }



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text("TazaKhabar"),
//       //   centerTitle: true,
//       // ),
//       body: PageView.builder(
//       onPageChanged: (value){
//         GetNews();

//       },
//       scrollDirection: Axis.vertical,
//       itemBuilder: (context, index) {
        
//         return newscont(
//           imgUrl:newsArt.imgUrl,
//           newshead: newsArt.newshead,
//           newscnt: newsArt.newscnt,
//           newsDes: newsArt.newsDes,
//           newsurl: newsArt.newsurl,
//         );
//       },
//      ),
//     ) ;
//   }
// }