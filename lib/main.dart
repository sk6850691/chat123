import 'package:chat/firebase/auth.dart';
import 'package:chat/helper/authenticate.dart';
import 'package:chat/screens/search.dart';
import 'package:chat/screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: SearchScreen(),
    );
  }
}
