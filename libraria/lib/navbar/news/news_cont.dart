import 'package:flutter/material.dart';
// import 'package:taza_khabar/detail_view.dart';
import 'package:libraria/utils/detail_view.dart';

class newscont extends StatelessWidget {
  String imgUrl;
  String newshead;
  String newsDes;
  String newsurl;
  String newscnt;

  newscont(
      {super.key,
      required this.imgUrl,
      required this.newshead,
      required this.newsDes,
      required this.newsurl,
      required this.newscnt
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.network(
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              imgUrl),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  // newshead.substring(0,20),
                  newshead,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  newscnt,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black38
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  newsDes.length>200? newsDes.substring(0,200):
                  "${newsDes.toString().substring(0,newsDes.length-15)}...",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>details(newsurl: newsurl)));
                    },
                    child: Text("readmore")),
              ),
            ],
          )
        ],
      ),
    );
    ;
  }
}
