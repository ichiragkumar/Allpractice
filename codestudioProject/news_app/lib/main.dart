import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'package:news_app/home.dart';
 
void main() => runApp(const MyApp()); 


class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
   
    @override Widget build(BuildContext context) {
       return MaterialApp( title: 'Flutter Daily News',

       debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
           brightness: Brightness.dark, 
           primaryColor: Colors.black, 
           scaffoldBackgroundColor: Colors.black, 
        ), 

        
    home: const HomePage(), ); } }