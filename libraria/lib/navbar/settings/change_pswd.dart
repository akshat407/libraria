import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libraria/login_signup/login/welcome.dart';
import 'package:libraria/navbar/settings/settings_main.dart';

class chngepswd extends StatefulWidget {
  const chngepswd({super.key});

  @override
  State<chngepswd> createState() => _chngepswdState();
}

class _chngepswdState extends State<chngepswd> {
  get oldPassword => null;

  @override
  Widget build(BuildContext context) {

    var auth=FirebaseAuth.instance;
    var currentUser=FirebaseAuth.instance.currentUser;

    changePassword({email,oldPassword,newPassword}) async{

      var cred=EmailAuthProvider.credential(email: email, password: oldPassword);

      await currentUser!.reauthenticateWithCredential(cred).then((value){
        currentUser.updatePassword(newPassword);
      }).catchError((error){

        print(error.toString());

      });

    }

    var oldPasswordController=TextEditingController();
    var newPasswordController=TextEditingController();
    var confPasswordController=TextEditingController();
    return Scaffold(
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              scrollPadding: EdgeInsets.all(15),
              controller: oldPasswordController,
              decoration: InputDecoration(
                isDense: true,
                alignLabelWithHint: true,
                labelText: "Old Password",
                hintText: "Enter your old password",
              ),
            ),
            SizedBox(height: 20,),
              TextFormField(
              controller: newPasswordController,
              decoration: InputDecoration(
                isDense: true,
                alignLabelWithHint: true,
                labelText: "New Password",
                hintText: "******",
              ),
              ),
              SizedBox(height: 20,),
              TextFormField(
              controller: confPasswordController,
              decoration: InputDecoration(
                isDense: true,
                alignLabelWithHint: true,
                labelText: "Confirm Password",
                hintText: "******",
              ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: ()async{
                  if(newPasswordController.text == confPasswordController.text){
                    await changePassword(
                  email:  currentUser!.email,
                  oldPassword: oldPasswordController.text,
                  newPassword: newPasswordController.text,
                    );
                  await signOut();
                  Get.to(()=>loginsignup());
                  
                 
                  

                } 
                },
                  
                
                child: Text("Change Password"))
          ],
        ),
      ),

    );
  }
}