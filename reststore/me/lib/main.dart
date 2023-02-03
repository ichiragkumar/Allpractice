import 'package:flutter/material.dart';
import 'package:me/home.dart';

import 'about.dart';


void main(){



  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    
    initialRoute: 'home',
    routes: {
      'home': ((context) => MyHome()),
      'about': ((context) => About()),

    },
  ));
}