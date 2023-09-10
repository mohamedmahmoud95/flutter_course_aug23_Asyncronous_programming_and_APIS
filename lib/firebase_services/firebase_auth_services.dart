


import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;


  Future <bool> signInAnon()async{
    UserCredential userCredential =  await firebaseAuth.signInAnonymously() ;
    print("userId: ${userCredential.user}");
    return userCredential.user != null;
  }

  void signOut() async{
    await firebaseAuth.signOut();
  }
  void signInWithEmailAndPassword(String email, String password) async{
    await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    print("done");
  }

  void register(String email, String password ) async{
    await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }

}