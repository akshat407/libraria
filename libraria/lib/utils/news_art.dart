import 'package:flutter/material.dart';
// import 'news_cont.dart';


class NewsArt{
    String imgUrl;
  String newshead;
  String newsDes;
  String newsurl;
  String newscnt;


  NewsArt(
    {
      required this.imgUrl,
      required this.newsDes,
      required this.newshead,
      required this.newscnt,
      required this.newsurl

    }
  );


static NewsArt fromAPItoApp(Map<String,dynamic> article){

    return NewsArt(
      imgUrl: article["urlToImage"] ?? "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.hindustantimes.com%2Findia-news%2Fbreaking-news-live-updates-june-15-2023-today-101686787574165.html&psig=AOvVaw35uLNR6ya-jb3LSO3aGpsx&ust=1687156620531000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPCFq6iazP8CFQAAAAAdAAAAABAJ", 
      newsDes: article["content"], 
      newshead: article["title"], 
      newscnt: article["description"], 
      newsurl: article["url"]);

  }
}