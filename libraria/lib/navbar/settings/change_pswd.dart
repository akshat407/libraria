import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: oldPasswordController,
              decoration: InputDecoration(
                isDense: true,
                alignLabelWithHint: true,
                labelText: "Old Password",
                hintText: "Enter your old password",
              ),
            ),
              TextFormField(
              controller: oldPasswordController,
              decoration: InputDecoration(
                isDense: true,
                alignLabelWithHint: true,
                labelText: "Old Password",
                hintText: "Enter your old password",
              ),
              ),
              ElevatedButton(
                onPressed: ()async{
                  await changePassword(
                  // email:  ,
                  oldPassword: oldPasswordController.text,
                  newPassword: newPasswordController.text,

                  );
                  print('Password changed');
                  

                }, 
                
                child: Text("Change Password"))
          ],
        ),
      ),

    );
  }
}