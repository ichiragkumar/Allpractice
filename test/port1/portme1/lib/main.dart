import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portme1/implementssr.dart';
import 'package:portme1/liveapp.dart';
import 'package:portme1/projectSc.dart';
import 'package:portme1/socialscreen.dart';

import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // static const String _title = 'Flutter Code Sample';

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: "me",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,


        // appBar: AppBar(title: const Text(_title)),
        body: Screens(),
      ),
    );
  }
}


class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {

  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        physics: BouncingScrollPhysics(),
    
        children: [
          SocialScreen(),

          LiveAppsHere(),
          HomeScreen(),


          ProjectScreen(),



          
    
    
         
    
          
    
    
    
           Center(
    
            child: Column(
              children: [
    
                Text("lol")
              ],
            ),
           
          )
    
         
    
        ],
    
    
      ),
    );
  }
}