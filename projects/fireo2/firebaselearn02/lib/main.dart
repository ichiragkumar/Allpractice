// import 'package:firebase01i/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    final Future<FirebaseApp> _fApp = Firebase.initializeApp();
    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(

        body: FutureBuilder(future: _fApp,builder: (context, snapshot) {
          if(snapshot.hasError){

            return Text("Spmething has problem with error");
          }else if(snapshot.hasData){

            return Text("Hllo ");
            
            // Center(child: Text("Succusfully", style: TextStyle(fontSize: 40),));
          }else{

            return CircularProgressIndicator();
          }



          
        }

        )
         
  





      )

      
    );
  }
}


