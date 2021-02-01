import 'package:chat/firebase/auth.dart';
import 'package:chat/screens/chatscreen.dart';
import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  final Function toggle;
  SignIn(this.toggle);
  //constructor is always activated in this section
  //we created this above constructor so that the SignIn in authenticate.dart gets activated to receive toggleview function
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  AuthService service = AuthService();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  void SignIn(){
    if(formkey.currentState.validate()){
      setState(() {
        
      });
      service.signIn(emailcontroller.text,passwordcontroller.text).then((val){
        if(val!=null){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>ChatScreen()));
        }
      });
      
      
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('signIn'),

      ),
      body: Form(key: formkey,
        child: Column(
          children: [
            TextFormField(
              validator: (val){
                return val= null ?"enter email":null;
              },
              controller: emailcontroller,
              
            ),
            SizedBox(height: 20,),
            TextFormField(
              validator: (val){
                return val = null ?"enter password":null;
              } ,
              controller: passwordcontroller,
            ),
            SizedBox
              (height: 20,),
            MaterialButton(
              color: Colors.blue,
              child: Text('signin'),
              onPressed: SignIn
            ),
            SizedBox(height: 20,),

            MaterialButton(
              onPressed: (){widget.toggle();},
              color: Colors.blue,
              child: Text("register now"),

    )
          ],

        ),
      ),
    );
  }
}
