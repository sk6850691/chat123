import 'package:chat/widgets/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat/widgets/user.dart';
import 'package:flutter/cupertino.dart';
class AuthService{
  FirebaseAuth _auth = FirebaseAuth.instance;




  User userFirebase(FirebaseUser user){
    return user !=null ? User(userId: user.uid):null;

  }


 Future  SignUpEmail(String email, String password)async{
   try{
     AuthResult result= await _auth.createUserWithEmailAndPassword(email: email,password: password);
   FirebaseUser firebaseUser = result.user;
   return userFirebase(firebaseUser);
   }
   catch(e){print(e);
   }


}
Future signIn(String email, String password)async{
   try{
    AuthResult result = await _auth.signInWithEmailAndPassword(email: email,password: password);
    FirebaseUser firebaseUser = result.user;
    return userFirebase(firebaseUser);
   }catch(e){
     print(e);}
}}

