import 'package:flutter/material.dart';
// import 'package:libraria/login_signup/login/signup_screen.dart';
import 'package:libraria/login_signup/login/welcome.dart';
import 'package:libraria/main.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
@override
void initState()
{
  super.initState();
  _navigatehome();
}

_navigatehome()async{
  await Future.delayed(Duration(milliseconds: 2000),(){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) =>  loginsignup())));
}

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/splash.jpg'),fit: BoxFit.cover)
        ),
      ),
    );
  }
}