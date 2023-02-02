import 'package:flutter/material.dart';
import "package:lottie/lottie.dart";



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var emialController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
    
        body:  Center(
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            
    
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              
    
                     Container(
                      height: 100,
                      width: 200,
    
                      child: TextField(
    
                        controller: emialController,
                        decoration: InputDecoration(
                          
    
                          hintText: "Email",
                        )
                        
                        
                      ),
                     ),
                     SizedBox(height: 10,),
    
    
                     Container(
                      height: 100,
                      width: 200,
    
                      child: TextField(
                        controller: passwordController,
    
                        decoration: InputDecoration(
    
                          hintText: "password",
                        )
                        
                        
                      ),
                     ),
                     SizedBox(height: 20,),
    
    
    
                     Container(
                      
                      width: 250,
                      height: 50,

                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(30),
                        

                      ),
    
                      child: TextButton(
                        
                        child: Text("Submit", style: TextStyle(fontSize: 30, color: Colors.black),),
                        onPressed: (){
                         print("SurPrise");
                        },
                        
                        )
    
                     )
    
    
                     
                     
            ],
          ),
        )
      ),
    );
  }
}
