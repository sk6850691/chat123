import 'package:chat/firebase/auth.dart';
import 'package:chat/screens/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  AuthService authService = AuthService();
  final key = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  void signUp(){
    if(key.currentState.validate()){
      setState(() {

      });
      authService.SignUpEmail(emailcontroller.text,passwordcontroller.text).then((val){
        print(val);
        Navigator.pushReplacement(context,MaterialPageRoute(
          builder: (context)=>ChatScreen()
        ));
        }

      );
      };
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('Chatting App'),

    ),
      body:(
         Center(
          child: Form(key: key,
            child: Column(
              children: [
                TextFormField(

                  validator: (val){
                    return val.isEmpty ? "enter email":null;
                  },
                  controller: emailcontroller,
                )
                ,
                TextFormField(

                  validator: (val){
                    return val.isEmpty || val.length <4 ? "this will not work":null;
                  },
                  controller: usernamecontroller,



                ),
                TextFormField(

                  controller: passwordcontroller,
                  validator: (val){
                    return val.isEmpty ? "enter password":null;

                  },
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed:signUp ,
                  color: Colors.blue,
                  child: Text("signup"),
                )
              ],
            ),
          ),
        )
      )

    );
  }
}
