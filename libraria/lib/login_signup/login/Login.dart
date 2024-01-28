import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraria/navbar/home/home.dart';
import 'package:libraria/utils/utils.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

 Map<String, String> credentials = {
    'abc@gmail.com': '123456',
    'xyz@gmail.com': '123456',
  };

  FirebaseAuth auth=FirebaseAuth  .instance;

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

   Future<void> login() async {
    try {
      final String email = emailcontroller.text.trim();
      final String password = passwordcontroller.text.trim();

       await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Navigate to the next screen after successful login
      User? user = auth.currentUser;
      if (user != null) {
        // Navigate to the HomeScreen using Get.to()
        Get.offAll(() => home());
    }
    else {
        utils().toastmessege("User not found");
      }
    } 
    catch (e) {
      utils().toastmessege(e.toString());;
      // Handle error
    }
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Login',
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
                // padding: EdgeInsets.fromLTRB(16,20,16,16),
                padding: EdgeInsets.only(left: 20,right: 20),
              
                // margin: EdgeInsets.only(top: 15),
                color: Color(0xFF10596D),
                child:  Column(               
                  children: [
                    // RoundedTextField(placeholder: 'Email'),
                    TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: "Email",
                        hintText: "abc@gmail.com",
                      ),
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      controller: passwordcontroller,
                      
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        
                        isDense: true,
                        labelText: "Password",
                        hintText: "abc@gmail.com",
                      ),
                    ),
                    SizedBox(height: 80),
                    Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                          child: TextButton(
                            onPressed: (){
                              login();
                              
                            } , child: Text(
                              "Login",
                              style: TextStyle(
                                    fontSize: 24, // Adjust the font size as needed
                                    color: Colors.black, // Change the text color
                                    fontWeight: FontWeight.bold, // Adjust the font weight as needed
                                  ),),
                          ),
                      )
                    ),
                    // SizedBox(height: 60,),
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

//this is a Stateless Widget that will create a rounded rectangle now we will 
//use this rectangle to place two units here which is very imp here 
class RoundedTextField extends StatelessWidget {
  final String placeholder;

  const RoundedTextField({Key? key, required this.placeholder}) : super(key: key);

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
