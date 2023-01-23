
import 'package:flutter/material.dart';


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

      home: LoginPage(),

    );
  }

}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("hello world"),),

        drawer: Drawer(
          backgroundColor: Colors.red
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("hello world");
          },
          child: Icon(Icons.home),
        ),


        body: Column(


        )
          

          
      );
  }
}