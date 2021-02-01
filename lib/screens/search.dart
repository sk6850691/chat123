import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "searchUsername"

            ),
          ),

        ],
      ),


    );
  }
}
