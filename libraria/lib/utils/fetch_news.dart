import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:libraria/utils/news_art.dart';
// import 'package:http/http.dart';
// import 'package:taza_khabar/news_art.dart';


//https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=b5f83a585466411392f0341339fc844a
class Fetch_news {

  static List sourcesid=[
      "abc-news",
 
    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
   
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",
    
    "national-geographic",
 
    "news24",
    "new-scientist",
   
    "new-york-magazine",
    "next-big-future",
  
    "techcrunch",
    "techradar",
   
    "the-hindu",
   
    "the-wall-street-journal",
    
    "the-washington-times",
    "time",
    "usa-today",
    ];

  static Future<NewsArt> fetch_news() async{

     final _random = new Random();
    var element = sourcesid[_random.nextInt(sourcesid.length)];
    // print(element);

    Response response= await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$element&apiKey=b5f83a585466411392f0341339fc844a"));

    Map body_data=jsonDecode(response.body);

    // print(body_data);
    print("************************************");
    List articles = body_data["articles"];
  
    final _Newrandom = new Random();
    var myArticle = articles[_random.nextInt(articles.length)];
    print(myArticle);


    return NewsArt.fromAPItoApp(myArticle);
  }



}

