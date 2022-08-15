import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // Google 로그인 및 Firebase 인증을 위한 객체
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text('login page'),
    // );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Instagram Clone',
            style: TextStyle(fontSize: 40.0,
            fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(50.0),
            ),
            SignInButton(Buttons.Google,
                onPressed: (){
                  signInWithGoogle().then((user) {
                print(user);
              });

                },)
          ],
        ),
      ),
    );
  }

  // login 은 비동기로 이루어지기에, 응답이 올 때까지 기다려야 한다.
  // 응답은 FirebaseUser 로 받는 메서드
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
