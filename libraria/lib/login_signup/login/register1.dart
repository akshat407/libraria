import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraria/home/home.dart';
import 'package:libraria/login_signup/login/register2.dart';
class register1 extends StatelessWidget {
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
                    RoundedTextField(placeholder: 'Full Name'),
                    SizedBox(height: 20),
                    RoundedTextField(placeholder: 'E-mail'),
                    SizedBox(height: 20),
                    RoundedTextField(placeholder: 'Phone Number'),
                    SizedBox(height: 20),
                    RoundedTextField(placeholder: 'USN'),
                    SizedBox(height: 50),
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
                              Get.to(() => register2());
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
