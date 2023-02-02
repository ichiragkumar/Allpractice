import 'package:flutter/material.dart';
import 'package:inflearn/animations/01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyBaseAnimation(),
    );
  }
}


class ALlscreens extends StatefulWidget {
  const ALlscreens({super.key});

  @override
  State<ALlscreens> createState() => _ALlscreensState();
}

class _ALlscreensState extends State<ALlscreens> {
  @override
  Widget build(BuildContext context) {
    return PageView(


      children: [

        MyBaseAnimation(),

        
      ],
    );
  }
}
