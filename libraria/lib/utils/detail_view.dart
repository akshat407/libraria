import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class details extends StatefulWidget {

  String newsurl;
   details({super.key,
  required this.newsurl,
  });

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body:WebView(
        initialUrl: widget.newsurl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          
        }
      )
  
    );
  }
}