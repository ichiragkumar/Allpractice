import 'package:flutter/material.dart';


class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
     Scaffold(
      appBar: AppBar(title: Text("This is NextScreen")),


      body: Column(
        children: [

          Container(
            height: 200,
            width: 200,
            color: Colors.red
          ),

          Text("hii sir")
        ]
        
      ),

     )   
      );
  }
}