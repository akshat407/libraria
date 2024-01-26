import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:libraria/navbar/home/home.dart';
import 'package:libraria/navbar/home/home_screen.dart';

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

 FirebaseAuth auth = FirebaseAuth.instance ; 
 var emailController = TextEditingController();
 var passwordController = TextEditingController();
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 createuser({email,password})async{
  

  if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        // If the user creation is successful, you can navigate to another page or show a success message
        // For example:
        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
      } catch (e) {
        // If there is an error during user creation, you can handle it here
        print(e.toString());
        // You can also show an error message to the user
        // For example:
        // Scaffold.of(context).showSnackBar(SnackBar(content: Text(e.message)));
      }
    }
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
                child:  Form(
                  key: _formKey,
                  child: Column(               
                    children: [
                      
                      
                      RoundedTextField(placeholder: 'E-mail',controller: emailController,),
                      SizedBox(height: 20),
                      RoundedTextField(placeholder: 'Password',controller: passwordController,),
                      SizedBox(height: 20),
                      
                      
                      Container(
                        width: 350,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                            child: TextButton(
                              onPressed: ()async{
                               await createuser(email:emailController.text, password:passwordController.text);
                               Get.to(()=>homescreen());
                              } , child: Text(
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
                      Container(
                        width: 500,
                        height: 10,
                        color: Colors.white,
                        
                      )
                    ],
                  ),
                ),
              

              ),

            ),
          ],
        ),
      );
  }
}


