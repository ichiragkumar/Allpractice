import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:udemy23/nextscreen.dart';



class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  void increment(){
    int counter = 0;
    
    counter = counter+1;
 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              

              SizedBox(height: 30,),

             



              MaterialButton(
                onPressed: (){
                  // Navigator.of(context).pushNamed("nextScreenpage");

                  Navigator.push(context, MaterialPageRoute(builder: (context)  => NextScreen()));


                },
                child: Icon(Icons.next_plan),
              ),
            ],
          ),
        )
    );
  }
}