import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraria/navbar/home/aboutus.dart';
import 'package:libraria/navbar/home/home.dart';
import 'package:libraria/login_signup/login/Login.dart';
import 'package:libraria/login_signup/login/register1.dart';

import 'package:libraria/navbar/news/news_main.dart';
// import 'package:libraria/navbar/news/news_main.dart';





class loginsignup extends StatelessWidget {
  const loginsignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/libaray.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
              height: 200,
              width: 350,
              margin: EdgeInsets.only(top: 50, left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff0C6C86),
                  border: Border.all(color: Colors.black)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WELCOME TO LIBRARIA",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "official digital library of BMSCE",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: 200, left: 10, right: 10),
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: TextButton(
              onPressed: () {
                Get.to(Login());
              },
              child: Text("LOGIN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: TextButton(
              onPressed: () {
                Get.to(register1());
              },
              child: Text("SIGNUP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            ),
          ),
          Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  color: Colors.white,
                  border: Border.all(color: Colors.black)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/facebook_logo.png'),fit: BoxFit.cover)
                          ),

                        ),
                        TextButton(
                          onPressed: (){
                            Get.to(() => home());
                          }, 
                          child: Text("Sign in with Facebook",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                          
                        // Text(
                        //   "official digital library of BMSCE",
                        //   style: TextStyle(
                        //       fontSize: 20,
                        //       fontWeight: FontWeight.w700,
                        //       color: Colors.white),
                        // ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/facebook_logo.png'))
                          ),

                        ),
                        TextButton(
                          onPressed: (){
                          // Get.to(newsmain());
                          }, 
                          child: Text("Sign in with Google",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                          
                        // Text(
                        //   "official digital library of BMSCE",
                        //   style: TextStyle(
                        //       fontSize: 20,
                        //       fontWeight: FontWeight.w700,
                        //       color: Colors.white),
                        // ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
