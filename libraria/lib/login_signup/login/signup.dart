import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:libraria/navbar/home/home.dart';
import 'package:libraria/navbar/home/home_screen.dart';
import 'package:libraria/utils/utils.dart';

class RoundedTextField extends StatelessWidget {
  final String placeholder;
 final  controller;
  const RoundedTextField({super.key, required this.placeholder, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: placeholder,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class registernew extends StatefulWidget {
  const registernew({super.key});

  @override
  State<registernew> createState() => _registernewState();
}

class _registernewState extends State<registernew> {

 bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final namecontroller=TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  void Signup() {
    setState(() {
      loading = true;
    });
    _auth.createUserWithEmailAndPassword(
            email: emailcontroller.text,
            password: passwordcontroller.text.toString())
        .then((value) {
          utils().toastmessege('Signup successfully, now login with this credentials');
      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace) {
      debugPrint(error.toString());
      utils().toastmessege(error.toString());
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              color: Color(0xEBF0EF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/bmsce.png', // Replace with your image asset path
                    width: 100, // Set the width as needed
                    height: 100, // Set the height as needed
                  ),
                  SizedBox(height: 10), // Adjust the spacing as needed
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.65,
                //TO EDIT PADDDING SIDE WISE HERE 
                padding: EdgeInsets.fromLTRB(16,100,16,16),
                margin: EdgeInsets.only(top: 15),
                color: Color(0xFF10596D),
                child:  Column(               
                  children: [
                    
                    
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white,fontSize: 18),hintStyle: TextStyle(color: Colors.white),
                        isDense: true,
                        labelText: "Email",
                        hintText: "abc@gmail.com",
                      ),
                    ),
                    SizedBox(height: 20),
                   TextFormField(
                    style: TextStyle(color: Colors.white),
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white,fontSize: 18),hintStyle: TextStyle(color: Colors.white),
                        isDense: true,
                        labelText: "Password",
                        hintText: "******",
                      ),
                    ),
                    SizedBox(height: 80),
                    
                    
                    Container(
                      width: 350,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                          child: TextButton(
                            onPressed: (){
                              if(emailcontroller.text.isNotEmpty || passwordcontroller.text.isNotEmpty){
                             Signup();
                             Get.to(home());}
                             else{
                              utils().toastmessege("Enter Valid credentials");
                             }
                            } , 
                            child: Text(
                              "Next -> ",
                              style: TextStyle(
                                    fontSize: 18, // Adjust the font size as needed
                                    color: Colors.black, // Change the text color
                                    fontWeight: FontWeight.bold, // Adjust the font weight as needed
                                  ),),
                          ),
                      )
                    ),
                    SizedBox(height: 60,),
                    // Container(
                    //   width: 500,
                    //   height: 10,
                    //   color: Colors.white,
                      
                    // )
                  ],
                ),
              

              ),

            ),
          ],
        ),
      );
  }
}


