
import 'package:flutter/material.dart';
import 'package:puja23/chat_page.dart';
import "login_page.dart";

void main(){


  runApp( ChatApp());

  
}



// creating a root widget - statelesswidget
//



class ChatApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),

      home: PagesScreen(),

    );
  }

}


class PagesScreen extends StatefulWidget {
  const PagesScreen({super.key});

  @override
  State<PagesScreen> createState() => _PagesScreenState();
}

class _PagesScreenState extends State<PagesScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView(
        children: [

          LoginPage(),
          ChatScreen(),
          

          
        ],


    );

  }
}
