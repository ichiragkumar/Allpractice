import 'package:chatgpt/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Gpt',
      theme: ThemeData(
  
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: ChatScreen(),
    );
  }
}

         
         