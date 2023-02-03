import 'package:flutter/material.dart';
import 'package:udemy23/homepage.dart';
import 'package:udemy23/nextscreen.dart';


void main(){
  runApp(MainScreen());
}


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(title: Text("App")),

        drawer: Drawer(backgroundColor: Colors.red),


        body: HomePageScreen()
      ),

      

      

      // routes: <String, WidgetBuilder>{
      //   'nextScreenpage' : (BuildContext context) =>NextScreen()
      // }


      
      
    );
  }
}


