import 'package:flutter/material.dart';
import 'package:flutter_course_aug23_asyncronous_programming_and_api_http_requests/firebase_services/firebase_auth_services.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  FirebaseAuthServices firebaseAuthServices = FirebaseAuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Sign in anonymously"),
              onPressed: () async{
                bool signInResult = await firebaseAuthServices.signInAnon();
                print(signInResult);

              },
            ),


            ElevatedButton(
              child: Text("Sign out"),
              onPressed: () {
                 firebaseAuthServices.signOut();
              },
            ),


            ElevatedButton(
              child: Text("Register"),
              onPressed: () {
                firebaseAuthServices.register("123@gmail.com", "Test1234#");
              },
            ),


            ElevatedButton(
              child: Text("Sign in"),
              onPressed: () {
                firebaseAuthServices.signInWithEmailAndPassword("123@gmail.com", "Test1234#",);
              },
            ),
          ],
        ),
      ),

    );
  }
}
