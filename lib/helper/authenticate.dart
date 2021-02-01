import 'package:chat/screens/signin.dart';
import 'package:chat/screens/signup.dart';
import 'package:flutter/material.dart';
class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

   void toggleView(){
     setState(() {
       showSignIn = ! showSignIn;
     });
   }
  @override
  Widget build(BuildContext context) {
  if(showSignIn){return SignIn(toggleView);}
  //to pass functions to a class we use constructors
  else{
    return SignUp();
  }
  }
}
