import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

Future<UserCredential?> signInWithFacebook() async {
    try {
      // Trigger the Facebook sign-in dialog
      final LoginResult result = await FacebookAuth.instance.login();

      // Check if the user canceled the sign-in
      if (result.status == LoginStatus.cancelled) {
        return null;
      }

      // If the sign-in is successful, authenticate with Firebase
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(result.accessToken!.token);

      return await auth.signInWithCredential(facebookAuthCredential);
    } catch (e) {
      print("Error signing in with Facebook: $e");
      return null;
    }
  }
