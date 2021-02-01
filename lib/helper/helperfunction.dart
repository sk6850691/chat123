import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HelperFunctions {

  static String sharedPreferenceUserLoggedInKey = "isLoggedIn";
  static String sharedPreferenceUserNameKey = "USERNAMEKEY";
  static String sharedPreferencePasswordKey = "PASSWORDKEY";

//Create a function To save data in shared SharedPreference
  static Future<bool> saveUserLoggedInSharedPreference(
      bool isUserLoggedIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(sharedPreferenceUserLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saveUerNameInSharedPreference(
     String userName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferenceUserLoggedInKey, userName);
  }
  static Future<bool> saveUserPAsswordSharedPreference(String userPassword)async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferenceUserLoggedInKey, userPassword );
}

//create a function to fetch data from shared preference


static Future<void> getUserLoggedInSharedPreference()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getBool(sharedPreferenceUserLoggedInKey);
}
  static Future<void> getuserNameSharedPreference()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(sharedPreferenceUserNameKey);
  }
  static Future<void> getuserPasswordSharedPreference()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(sharedPreferencePasswordKey);
  }





}